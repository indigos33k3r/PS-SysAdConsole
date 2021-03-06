
#Reader Variables
$LOGDIRRDR = "C:\SASsoftwareinstall\Reader\"
$arglistRDR =@()
$arglistRDR =@("-appname", "*'Adobe Reader'*", "-matchall", "| select -Expand Version")
$RequiredVersionRDR = "11.0.06"
$OutlogRDR = "c:\SASsoftwareinstall\Reader\SASVersioncheck.log"
$RemovalLogRDR="$LOGDIRRDRreminst.log"
$InstallLogRDR="$LOGDIRRDRInstall.log"

#Flash Variables
$LOGDIRFL = "C:\SASsoftwareinstall\Flash\"
$arglistFL =@()
$arglistAX =@("-appname", "*'Flash* ActiveX'", "-matchall", "| select -Expand Version")
$arglistPG =@("-appname", "*'Flash* Plugin'", "-matchall", "| select -Expand Version")
$RequiredVersionAX = "12.0.0.50"
$RequiredVersionPG = "12.0.0.50"
$OutlogFL = "$LOGDIRFL\SASVersioncheck.log"


#Shockwave Variables
$LOGDIRSW = "C:\SASsoftwareinstall\shockwave\"
$arglistSW =@()
$arglistSW =@("-appname", "*'Shockwave'*", "-matchall", "| select -Expand Version")
$RequiredVersionSW = "12.0.9.149"
$OutlogSW = "c:\SASsoftwareinstall\Shockwave\SASVersioncheck.log"
$RemovalLog="$LOGDIRSWreminst.log"
$InstallLog="$LOGDIRSWInstall.log"


#Firefox Variables
$LOGDIRFF = "C:\SASsoftwareinstall\Firefox\"
$arglistFF =@()
$arglistFF =@("-appname", "'*Firefox*'", "-matchall", "| select -Expand Version")
$RequiredVersionFF = "27.0"
$OutlogFF = "$LOGDirFF\SASVersioncheck.log"

#EMET Variables
$LOGDIREMET = "C:\SASsoftwareinstall\EMET\"
$arglistEMET =@()
$arglistEMET =@("-appname", "*'EMET'*", "-matchall", "| select -Expand Version")
$RequiredVersionEMET = "4.1"
$OutlogEMET = "c:\SASsoftwareinstall\EMET\SASVersioncheck.log"
$RemovalLog="$LOGDIREMETreminst.log"
$InstallLog="$LOGDIREMETInstall.log"

#Global Variables
$PATH = "<<Server>>\PATH$\\Get-InstalledApp.ps1"
$SASTime = Get-Date -format g
