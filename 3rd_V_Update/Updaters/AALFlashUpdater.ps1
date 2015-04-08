. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"

if (-not (test-path "c:\SASsoftwareinstall\Flash") ) 
	{
			md $LOGDIRFl | out-null
	}
	
$VersionAX = Invoke-Expression  "$PATH $arglistFlAX"
$VersionPG = Invoke-Expression  "$PATH $arglistFlPG"
Add-Content $OutlogFL $SASTime
Add-Content $OutlogFL "SAS Adobe Flash Checking Started........I wear a fez now.  Fezes are cool!"

Function Current {
	Add-Content $OutlogFL "Adobe Flash ActiveX is current at $VersionAX"
	Add-Content $OutlogFL "Adobe Flash Plugin is current at $VersionPG"
	Add-Content $OutlogFL "SAS Flash Version Check Complete"
	Add-Content $OutlogFL $SASTime
}

Function UpdateAX {
	Add-Content $OutlogFL "SAS ALERT!!!!! Out of Band software found!!!!"
	Add-Content $OutlogFL "Adobe Flash ActiveX found at version $VersionAX!"
	Add-Content $OutlogFL "Upgrade Starting!!!!!!!!!!!! On the fields of Trenzalor, silence will fall when the question is asked.........."
	
	$process = Start-Process -FilePath "msiexec.exe" @('-i', '<<Server>>\PATH$\\flash\install_flash_player_12_active_x.msi',  '/qn', '/l*v', 'c:\SASsoftwareinstall\Flash\InstallAX.log') -Wait -Passthru
		if ($process.Exitcode -eq 0) {
			Add-Content $OutlogFL "Adobe Flash ActiveX $RequiredVersionAX has been successfully installed with exit code $($process.ExitCode)!"
		}
		else {
			Add-Content $OutlogFL "Adobe Flash ActiveX $RequiredVersionAX has failed with exit code $($process.ExitCode)"
		}
	Add-Content $OutlogFL "Flash ActiveX Installation Complete! .......Doctor Who?"
	Add-Content $OutlogFL $SASTime
}

Function UpdatePG {
	Add-Content $OutlogFL "SAS ALERT!!!!! Out of Band software found!!!!"
	Add-Content $OutlogFL "Adobe Flash Plugin found at version $VersionPG!"
	Add-Content $OutlogFL "Upgrade Starting!!!!!!!!!!!! On the fields of Trenzalor, silence will fall when the question is asked.........."
	
	$process = Start-Process -FilePath "msiexec.exe" @('-i', '<<Server>>\PATH$\\flash\install_flash_player_12_plugin.msi',  '/qn', '/l*v', 'c:\SASsoftwareinstall\Flash\InstallPG.log') -Wait -Passthru
		if ($process.Exitcode -eq 0) {
			Add-Content $OutlogFL "Adobe Flash Plugin $RequiredVersionPG has been successfully installed with exit code $($process.ExitCode)!"
		}
		else {
			Add-Content $OutlogFL "Adobe Flash Plugin $RequiredVersionPG has failed with exit code $($process.ExitCode)"
		}
	Add-Content $OutlogFL "Flash Plugin Installation Complete! .......Doctor Who?"
	Add-Content $OutlogFL $SASTime
}

Function UninstallOld {
	Add-Content $OutlogFL "Out of band Flash uninstall commencing!!!!!!!" 
	Start-Process -FilePath "<<Server>>\PATH$\\flash\uninstall_flash_player.exe" @('-Uninstall') -Wait
	Add-Content $OutlogFL "Removal Complete"
}

Function NoneInstalled {
	Add-Content $OutlogFL "No Flash Version found!"
	Add-Content $OutlogFL "SAS Version Check Complete.....Exiting!"
	Add-Content $OutlogFL $SASTime
}

If (($VersionAX -eq $Null) -and ($VersionPG -eq $Null)) {
	NoneInstalled
	} Elseif ((($VersionAX -ne $RequiredVersionAX) -and ($VersionAX -ne $NULL)) -and (($VersionPG -ne $RequiredVersionPG) -and ($VersionPG -ne $Null))) {
		UninstallOld -wait
		UpdateAX -wait
		UpdatePG -wait
		} ElseIf (($VersionAX -ne $RequiredVersionAX) -and ($VersionPG -eq $Null)) {
			UninstallOld -Wait
			UpdateAX -wait
			} ElseIf (($VersionAX -eq $Null) -and ($VersionPG  -ne $RequiredVerionPG)) {
				UninstallOld -wait
				UpdatePG -wait
				} Elseif (($VersionAX -eq $RequiredVersionAX) -and ($VersionPG -eq $RequiredVersionPG)) {
					Current
					}
