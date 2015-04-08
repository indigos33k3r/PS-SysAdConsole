. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"


if (-not (test-path "c:\SASsoftwareinstall\EMET") ) 
	{
			md $LOGDIREMET | out-null
	}
	

$Version = Invoke-Expression  "$PATH $arglistEMET"
Add-Content $outlogEMET $SASTime
Add-Content $outlogEMET "SAS EMET Version Checking Started........I wear a fez now.  Fezes are cool!"


Function Current {
	Add-Content $outlogEMET "EMET is SAS Current at $Version"
	Add-Content $outlogEMET "SAS EMET Version Check is Complete!!"
	Add-Content $outlogEMET $SASTime
}

<#
Function Remove{
Add-Content $outlogEMET "EMET found at version $Version"
Add-Content $outlogEMET  "SAS Alert!!!!! Out of Band Software found.  Removal initializing!!!"
	gwmi win32_product -filter "Name like '%EMET%'" | foreach-object {
		Add-content $outlogEMET "Uninstalling: $($_.Name)"
		$rv = $_.Uninstall().ReturnValue
	
		if ($rv -eq 0) 
		{
			Add-Content $outlogEMET "$($_.Name) uninstalled Successfully with Exit Code 0"
		}
		else
		{
			Add-Content $outlogEMET "There was an error ($rv) uninstalling $($_.Name)"
		}
	}
Add-Content $outlogEMET "Removal Complete."
}
#>
Function Install {

Add-Content $outlogEMET "Installation starting."
	$process = Start-Process -FilePath "msiexec.exe" @('-i', '<<Server>>\PATH$\\EMET\EMETSetup.msi', '/qn', '/l*v', 'C:\SASsoftwareinstall\EMET\Install.log') -Wait -Passthru
		if ($process.Exitcode -eq 0) {
			Add-Content $outlogEMET "EMET $RequiredVersionEMET has been successfully installed with exit code $($process.ExitCode)!"
		}
		else {
			Add-Content $outlogEMET "EMET $RequiredVersionEMET has failed with exit code $($process.ExitCode)"
		}
	Add-Content $outlogEMET "Installation Complete! .......Doctor Who?"
	Add-Content $outlogEMET $SASTime
}
	
	
	Function NotInstalled {
	Add-Content $outlogEMET "No EMET found!"
	Add-Content $outlogEMET "SAS Version Check Complete.....Exiting!"
	Add-Content $outlogEMET $SASTime
}
If (($Version -eq $Null) -or  ($Version -ne $RequiredVersionEMET)){
	Install
	} Elseif ($Version -eq $RequiredVersionEMET) {
		Current
}
		Exit
