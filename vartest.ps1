echo "Variable TEST"
. .\TPVariables




echo "Firefox Vars"
#Firefox Variables
echo $LOGDIRFF 
#echo $arglistFF 
#echo $arglistFF 
echo $RequiredVersionFF 
echo $OutlogFF 


(Get-Content .\TPVariables.ps1) | Foreach-Object { $_ -replace [regex]::escape($RequiredVersionAX), $FLAXtxt.Text} | set-content .\TPVariables.ps1powershell 