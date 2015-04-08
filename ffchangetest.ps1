$FFTxt = "29.0"
#. ".\TPVariables.ps1"
Get-content .\TPVariables.ps1 
$RequiredVersionFF = $FFTxt 
set-content .\TPVariables.ps1
Echo "$RequiredVersionFF"




<#. ./TPVariables
Echo "FFChange TEST!!!!!"
echo ""
echo $RequiredVersionFF
$RequiredVersionFF= $FFTxt
echo "$RequiredVersionFF"
set-content .\TPVariables.ps1
#>


#(Get-Content '.\TPVariables.ps1') |  foreach-object {$_.replace($RequiredVersionFF,$FFTxt)} | set-content '.\TPVariables.ps1';
#(Get-Content .\TPVariables.ps1) | Foreach {$_ -replace [regex]::escape('$RequiredVersionFF', '$FFTxt')} | set-content .\TPVariables.ps1
#(Get-Content .\TPVariables.ps1) | $RequiredVersionFF =  -replace $RequiredVersionFF, $FFTxt} | set-content .\TPVariables.ps1


<#
. ./TPVariables
$RequiredVersionFF = '28.0' 
set-content .\TPVariables.ps1
#>