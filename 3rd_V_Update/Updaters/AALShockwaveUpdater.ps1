. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"



if (-not (test-path "c:\SASsoftwareinstall\Shockwave") ) 
	{
			md $LOGDIRSW | out-null
	}
	

#$Version = Invoke-Expression "<<Server>>\PATH$\\Get-InstalledApp.ps1 @("-appname", "*'Shockwave'*", "-Matchall", "| select -Expand Version")"
$Version = Invoke-Expression  "$PATH $arglistSW"
Add-Content $OutlogSW "SAS Shockwave Version Checking Started........I wear a fez now.  Fezes are cool!"
Add-Content $OutlogSW $SASTime

Function Current {
#if ($Version -eq $RequiredVersionSW)  {
	Add-Content $OutlogSW "Shockwave is SAS Current at $Version"
	Add-Content $OutlogSW "SAS Shockwave version Check is Complete!!"
	Add-Content $OutlogSW $SASTime
}

Function Update {
#if ($Version -ne $RequiredVersionSW) {
	Add-Content $OutlogSW "Shockwave is SAS Current at $Version"
	Add-Content $OutlogSW  "SAS Alert!!!!! Out of Band Software found.  Update initializing!!!"
	Start-Process -FilePath "<<Server>>\PATH$\\Shockwave\sw_uninstaller.exe" @('/s') -Wait 
	Add-Content $OutlogSW "$Version has been removed"
	Start-Process -FilePath "msiexec.exe" @('-i', '<<Server>>\PATH$\\Shockwave\sw_lic_full_installer.msi', '/qn', '/l*v', 'C:\SASsoftwareinstall\shockwave\Install.log') -Wait
	Add-Content $OutlogSW "Installation Complete!"
	Add-Content $OutlogSW $SASTime
}
	
Function NotInstalled {
#if ($Version -eq "")
	Add-Content $OutlogSW "No Shockwave Version found!"
	Add-Content $OutlogSW "SAS Version Check Complete.....Exiting!"
	Add-Content $OutlogSW $SASTime
}


If ($Version -eq $Null) {
	NotInstalled
	} Elseif ($Version -eq $RequiredVersionSW) {
		Current
		} Elseif ($Version -ne $RequiredVersionSW) {
			Update
			}

Exit
