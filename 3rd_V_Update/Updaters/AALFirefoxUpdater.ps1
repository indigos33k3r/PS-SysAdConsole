. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"


if (-not (test-path "c:\SASsoftwareinstall\Firefox") ) 
	{
			md $LOGDIRFF | out-null
	}
	

$Version = Invoke-Expression  "$PATH $arglistFF"
Add-Content $OutlogFF "SAS Firefox Version Checking Started........I wear a fez now.  Fezes are cool!"
Add-Content $OutlogFF $SASTime

Function Current {
	Add-Content $OutlogFF "Firefox is SAS Current at $Version"
	Add-Content $OutlogFF "SAS Firefox version Check is Complete!!"
	Add-Content $OutlogFF $SASTime
}

Function Update {
	Add-Content $OutlogFF "Your Firefox is currently at $Version"
	Add-Content $OutlogFF  "SAS Alert!!!!! Out of Band Software found.  Update initializing!!!"
		$process = Start-Process -FilePath "<<Server>>\PATH$\\Firefox\Firefox.exe" @('-ms') -Wait -PassThru
		if ($process.Exitcode -eq 0) {
			Add-Content $OutlogFF "Firefox $RequiredVersionFF has been successfully installed with exit code $($process.ExitCode)!"
		}
		else {
			Add-Content $OutlogFF "Firefox $RequiredVersionFF has failed with exit code $($process.ExitCode)"
		}
	Add-Content $OutlogFF $SASTime
}
	
Function NotInstalled {
	Add-Content $OutlogFF "No Firefox Version found!"
	Add-Content $OutlogFF "SAS Version Check Complete.....Exiting!"
	Add-Content $OutlogFF $SASTime
}


If ($Version -eq $Null) {
	NotInstalled
	} Elseif ($Version -eq $RequiredVersionFF) {
		Current
		} Elseif ($Version -ne $RequiredVersionFF) {
			Update
			}

