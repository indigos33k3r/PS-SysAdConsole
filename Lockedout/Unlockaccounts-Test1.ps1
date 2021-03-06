#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 2/20/2014 7:35 AM
# Generated By: smithsa
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion

#region Generated Form Objects
$ADLockout = New-Object System.Windows.Forms.Form
$statusBar1 = New-Object System.Windows.Forms.StatusBar
$LockedBox = New-Object System.Windows.Forms.ListBox
$UnlockAccounts = New-Object System.Windows.Forms.Button
$GetLockedOut = New-Object System.Windows.Forms.Button
$toolBar1 = New-Object System.Windows.Forms.ToolBar
$notifyIcon1 = New-Object System.Windows.Forms.NotifyIcon
$saveFileDialog1 = New-Object System.Windows.Forms.SaveFileDialog
$saveFileDialog2 = New-Object System.Windows.Forms.SaveFileDialog
$openFileDialog1 = New-Object System.Windows.Forms.OpenFileDialog
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$GetLockedOut_OnClick= 
{
	
	
	If(-not $Append) 
	{
		$LockedBox.items.Clear()
	}
		$LockedUsers = Search-ADAccount -LockedOut | Select -Expand 'SAMAccountName'
		#$NoLockout =  [System.Windows.Forms.MessageBox]::Show("No SAS Users locked out at this time. Hooray!!!!!!","Remembering Passwords For the Win!",0)	
			If ($LockedUsers -eq $Null)
			{
				 [System.Windows.Forms.MessageBox]::Show("No SAS Users locked out at this time. Hooray!!!!!!","Remembering Passwords For the Win!",0)	
			}	
			Else 
			{
				foreach($Forgetter in $LockedUsers)
				{	
					$LockedBox.Items.Add($Forgetter)
				}
			}
}			



$UnlockAccounts_OnClick= 
{
	#Foreach($Forgetter in $LockedBox)
	#$Name = $LockedBox.SelectedItem
	If ($LockedBox.SelectedIndex -ge 0)
	{
		$Confirm = [System.Windows.Forms.MessageBox]::Show("Would you like to Unlock Account $LockedBox.SelectedItem?", "Are you sure?",4)
		If ($Confirm -eq "YES" -and $LockedBox.SelectedIndex -ge 0)
				{
					$Name = $LockedBox.SelectedItem
					Unlock-ADAccount $Name
				}
			Elseif ($Confirm -eq "YES" -and $LockedBox.SelectedIndex -lt 0)
				{
					 [System.Windows.Forms.MessageBox]::Show("No Item Selected!","Unh Unh Unh, You didn't say the magic word!",0,[Windows.Forms.MessageBoxIcon]::Warning)
				}
	}
	Elseif ($LockedBox.SelectedIndex -lt 0)
		{
			[System.Windows.Forms.MessageBox]::Show("No Item Selected!","Unh Unh Unh, You didn't say the magic word!",0,[Windows.Forms.MessageBoxIcon]::Warning)
		}
}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$ADLockout.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 361
$System_Drawing_Size.Width = 427
$ADLockout.ClientSize = $System_Drawing_Size
$ADLockout.DataBindings.DefaultDataSourceUpdateMode = 0
$ADLockout.Name = "ADLockout"
$ADLockout.Text = "SAS Locked User Accounts"

$statusBar1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 0
$System_Drawing_Point.Y = 339
$statusBar1.Location = $System_Drawing_Point
$statusBar1.Name = "statusBar1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 22
$System_Drawing_Size.Width = 427
$statusBar1.Size = $System_Drawing_Size
$statusBar1.TabIndex = 4
$statusBar1.Text = "statusBar1"

$ADLockout.Controls.Add($statusBar1)

$LockedBox.DataBindings.DefaultDataSourceUpdateMode = 0
$LockedBox.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 52
$System_Drawing_Point.Y = 215
$LockedBox.Location = $System_Drawing_Point
$LockedBox.Name = "LockedBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 108
$System_Drawing_Size.Width = 301
$LockedBox.Size = $System_Drawing_Size
$LockedBox.TabIndex = 3

$ADLockout.Controls.Add($LockedBox)


$UnlockAccounts.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 249
$System_Drawing_Point.Y = 97
$UnlockAccounts.Location = $System_Drawing_Point
$UnlockAccounts.Name = "UnlockAccounts"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 104
$UnlockAccounts.Size = $System_Drawing_Size
$UnlockAccounts.TabIndex = 2
$UnlockAccounts.Text = "Unlock Accounts"
$UnlockAccounts.UseVisualStyleBackColor = $True
$UnlockAccounts.add_Click($UnlockAccounts_OnClick)

$ADLockout.Controls.Add($UnlockAccounts)


$GetLockedOut.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 52
$System_Drawing_Point.Y = 97
$GetLockedOut.Location = $System_Drawing_Point
$GetLockedOut.Name = "GetLockedOut"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 105
$GetLockedOut.Size = $System_Drawing_Size
$GetLockedOut.TabIndex = 1
$GetLockedOut.Text = "Get Locked Users"
$GetLockedOut.UseVisualStyleBackColor = $True
$GetLockedOut.add_Click($GetLockedOut_OnClick)

$ADLockout.Controls.Add($GetLockedOut)

$toolBar1.DataBindings.DefaultDataSourceUpdateMode = 0
$toolBar1.DropDownArrows = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 0
$System_Drawing_Point.Y = 0
$toolBar1.Location = $System_Drawing_Point
$toolBar1.Name = "toolBar1"
$toolBar1.ShowToolTips = $True
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 42
$System_Drawing_Size.Width = 427
$toolBar1.Size = $System_Drawing_Size
$toolBar1.TabIndex = 0

$ADLockout.Controls.Add($toolBar1)

$notifyIcon1.Text = "notifyIcon1"
$notifyIcon1.Visible = $True

$saveFileDialog1.CreatePrompt = $True
$saveFileDialog1.ShowHelp = $True

$saveFileDialog2.CreatePrompt = $True
$saveFileDialog2.ShowHelp = $True

$openFileDialog1.FileName = "openFileDialog1"
$openFileDialog1.ShowHelp = $True

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $ADLockout.WindowState
#Init the OnLoad event to correct the initial state of the form
$ADLockout.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$ADLockout.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
