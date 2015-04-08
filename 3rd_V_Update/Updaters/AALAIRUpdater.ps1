$LOGDIR = "C:\SASsoftwareinstall\AIR\"
$arglist =@()
$arglist =@("-appname", "*'AIR'*", "| select -Expand Version")
$PATH = "<<Server>>\PATH$\\Get-InstalledApp.ps1"
$RequiredVersion = "4.0.0.1390"
$Outlog = "c:\SASsoftwareinstall\AIR\SASVersioncheck.log"
$RemovalLog="$LOGDIRreminst.log"
$InstallLog="$LOGDIRInstall.log"
$SASTime = Get-Date -format g



if (-not (test-path "c:\SASsoftwareinstall\AIR") ) 
	{
			md $LOGDIR | out-null
	}

$Version = Invoke-Expression  "$PATH $arglist"
Add-Content $Outlog $SASTime
Add-Content $Outlog "SAS AIR Version Checking Started.......On the fields of Trenzalor, silence will fall when the question is asked.........."

Function Current {
#if ($Version -eq $RequiredVersion)  {
	Add-Content $Outlog "Adobe AIR is SAS Current at $Version"
	Add-Content $Outlog "SAS AIR version Check is Complete!!"
	Add-Content $Outlog $SASTime
}

Function Update {
	Add-Content $Outlog "Your AIR is currently at $Version"
	Add-Content $Outlog  "SAS Alert!!!!! Out of Band Software found.  Update initializing!!!"
		$process = Start-Process -FilePath "<<Server>>\PATH$\\AIR\AdobeAIRInstaller.exe" @('-silent') -Wait -Passthru
		if ($process.Exitcode -eq 0) {
			Add-Content $Outlog "AIR $RequiredVersion has been successfully installed with exit code $($process.ExitCode)!"
		}
		else {
			Add-Content $Outlog "AIR $RequiredVersionAX has failed with exit code $($process.ExitCode)"
		}
	Add-Content $Outlog $SASTime
}

<# 
Function Remove {
Add-Content $Outlog "Adobe AIR found at version $Version"
Add-Content $Outlog  "SAS Alert!!!!! Out of Band Software found.  Removal initializing!!!"
	gwmi win32_product -filter "Name like '%Adobe AIR%'" | foreach-object {
		Add-content $Outlog "Uninstalling: $($_.Name)"
		$rv = $_.Uninstall().ReturnValue
	
		if ($rv -eq 0) 
		{
			Add-Content $Outlog "$($_.Name) uninstalled Successfully with Exit Code 0.......Doctor Who?"
		}
		else
		{
			Add-Content $Outlog "There was an error ($rv) uninstalling $($_.Name) .......Doctor Who?"
		}
	}
Add-Content $Outlog $SASTime
}
#>
	
Function NotInstalled {
#if ($Version -eq "")
	Add-Content $Outlog "No AIR Version found! .......Doctor Who?"
	Add-Content $Outlog "SAS Version Check Complete.....Exiting!"
	Add-Content $Outlog $SASTime
}


If ($Version -eq $Null) {
	NotInstalled
	} Elseif ($Version -eq $RequiredVersion) {
		Current
		} Elseif ($Version -ne $RequiredVersion) {
			Update
			}

Exit