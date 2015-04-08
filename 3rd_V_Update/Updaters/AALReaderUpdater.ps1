. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"


if (-not (test-path "c:\SASsoftwareinstall\Reader") ) 
	{
			md $LOGDIRRDR | out-null
	}
	

$Version = Invoke-Expression  "$PATH $arglistRDR"
Add-Content $OutlogRDR $SASTime
Add-Content $OutlogRDR "SAS Adobe Reader Version Checking Started........I wear a fez now.  Fezes are cool!"


Function Current {
	Add-Content $OutlogRDR "Adobe Reader is SAS Current at $Version"
	Add-Content $OutlogRDR "SAS Reader version Check is Complete!!"
	Add-Content $OutlogRDR $SASTime
}

Function Remove{
Add-Content $OutlogRDR "Adobe Reader found at version $Version"
Add-Content $OutlogRDR  "SAS Alert!!!!! Out of Band Software found.  Removal initializing!!!"
	gwmi win32_product -filter "Name like '%Adobe Reader%'" | foreach-object {
		Add-content $OutlogRDR "Uninstalling: $($_.Name)"
		$rv = $_.Uninstall().ReturnValue
	
		if ($rv -eq 0) 
		{
			Add-Content $OutlogRDR "$($_.Name) uninstalled Successfully with Exit Code 0"
		}
		else
		{
			Add-Content $OutlogRDR "There was an error ($rv) uninstalling $($_.Name)"
		}
	}
Add-Content $OutlogRDR "Removal Complete. On the fields of Trenzalor, silence will fall when the question is asked.........."
}

Function Install {

Add-Content $OutlogRDR "Installation starting."
	$process = Start-Process -FilePath "msiexec.exe" @('-i', '<<Server>>\PATH$\\rdr\Acroread.msi', 'TRANSFORM="Acroread.mst"', '/qn', '/l*v', 'C:\SASsoftwareinstall\Reader\Install.log') -Wait -Passthru
		if ($process.Exitcode -eq 0) {
			Add-Content $OutlogRDR "Adobe Reader $RequiredVersionRDR has been successfully installed with exit code $($process.ExitCode)!"
		}
		else {
			Add-Content $OutlogRDR "Adobe Reader $RequiredVersionRDR has failed with exit code $($process.ExitCode)"
		}
	Add-Content $OutlogRDR "Installation Complete! .......Doctor Who?"
	Add-Content $OutlogRDR $SASTime
}
	
Function NotInstalled {
	Add-Content $OutlogRDR "No Reader Version found!"
	Add-Content $OutlogRDR "SAS Version Check Complete.....Exiting!"
	Add-Content $OutlogRDR $SASTime
}


If ($Version -eq $Null) {
	NotInstalled
	} Elseif ($Version -eq $RequiredVersionRDR) {
		Current
		} Elseif ($Version -ne $RequiredVersionRDR) {
			Remove
			Install
			}

Exit
