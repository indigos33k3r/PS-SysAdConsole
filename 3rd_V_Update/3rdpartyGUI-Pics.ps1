

#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 2/18/2014 9:10 AM
# Generated By: smithsa
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$label6 = New-Object System.Windows.Forms.Label
$label5 = New-Object System.Windows.Forms.Label
$label4 = New-Object System.Windows.Forms.Label
$label3 = New-Object System.Windows.Forms.Label
$label2 = New-Object System.Windows.Forms.Label
$label1 = New-Object System.Windows.Forms.Label
$progressBar6 = New-Object System.Windows.Forms.ProgressBar
$progressBar5 = New-Object System.Windows.Forms.ProgressBar
$progressBar4 = New-Object System.Windows.Forms.ProgressBar
$progressBar3 = New-Object System.Windows.Forms.ProgressBar
$progressBar2 = New-Object System.Windows.Forms.ProgressBar
$progressBar1 = New-Object System.Windows.Forms.ProgressBar
$button14 = New-Object System.Windows.Forms.Button
$button13 = New-Object System.Windows.Forms.Button
$textBox7 = New-Object System.Windows.Forms.TextBox
$pictureBox7 = New-Object System.Windows.Forms.PictureBox
$pictureBox6 = New-Object System.Windows.Forms.PictureBox
$pictureBox5 = New-Object System.Windows.Forms.PictureBox
$pictureBox4 = New-Object System.Windows.Forms.PictureBox
$pictureBox3 = New-Object System.Windows.Forms.PictureBox
$pictureBox2 = New-Object System.Windows.Forms.PictureBox
$pictureBox1 = New-Object System.Windows.Forms.PictureBox
$button12 = New-Object System.Windows.Forms.Button
$button11 = New-Object System.Windows.Forms.Button
$button10 = New-Object System.Windows.Forms.Button
$button9 = New-Object System.Windows.Forms.Button
$button8 = New-Object System.Windows.Forms.Button
$button7 = New-Object System.Windows.Forms.Button
$button6 = New-Object System.Windows.Forms.Button
$button5 = New-Object System.Windows.Forms.Button
$button4 = New-Object System.Windows.Forms.Button
$button3 = New-Object System.Windows.Forms.Button
$button2 = New-Object System.Windows.Forms.Button
$button1 = New-Object System.Windows.Forms.Button
$textBox6 = New-Object System.Windows.Forms.TextBox
$textBox5 = New-Object System.Windows.Forms.TextBox
$textBox4 = New-Object System.Windows.Forms.TextBox
$textBox3 = New-Object System.Windows.Forms.TextBox
$textBox2 = New-Object System.Windows.Forms.TextBox
$textBox1 = New-Object System.Windows.Forms.TextBox
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$button7_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
$Textbox6.Text = $RequiredVersionRDR
}

$button4_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
If ($Textbox3.Text -ne "") {
(Get-Content .\TPVariables.ps1) |  foreach-object {$_.replace($RequiredVersionSW,$Textbox3.Text)} | set-content .\TPVariables.ps1
	}
}

$button10_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
$Textbox3.Text = $RequiredVersionSW
}

$button6_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
If ($Textbox1.Text -ne "") {
(Get-Content .\TPVariables.ps1) |  foreach-object {$_.replace($RequiredVersionEMET,$Textbox1.Text)} | set-content .\TPVariables.ps1
	}
}

$button8_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
$Textbox5.Text = $RequiredVersionAX
}

$handler_pictureBox5_Click= 
{
#TODO: Place custom script here

}

$button14_OnClick= 
{
#TODO: Place custom script here

}

$handler_form1_Load= 
{
#TODO: Place custom script here

}

$handler_textBox1_TextChanged= 
{
#TODO: Place custom script here

}

$button12_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
$Textbox1.Text = $RequiredVersionEMET
}

$handler_textBox6_TextChanged= 
{
#TODO: Place custom script here

}

$button1_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
If ($Textbox6.Text -ne "") {
(Get-Content .\TPVariables.ps1) | foreach-object {$_.replace($RequiredVersionRDR,$Textbox6.Text)} | set-content .\TPVariables.ps1
	}
}

$handler_pictureBox6_Click= 
{
#TODO: Place custom script here

}

$button5_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
If ($Textbox2.Text -ne "") {
(Get-Content .\TPVariables.ps1) |  foreach-object {$_.replace($RequiredVersionFF,$Textbox2.Text)} | set-content .\TPVariables.ps1
	}
}

$button9_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
$Textbox4.Text = $RequiredVersionPG
}

$button3_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
If ($Textbox4.Text -ne "") {
(Get-Content .\TPVariables.ps1) |  foreach-object {$_.replace($RequiredVersionPG,$Textbox4.Text)} | set-content .\TPVariables.ps1
	}
}

$button13_OnClick= 
{
#TODO: Place custom script here

}

$button11_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
$Textbox2.Text = $RequiredVersionFF
}

$button2_OnClick= 
{
#TODO: Place custom script here
. "<<Computer>>\desktop\SASscripts\TPTestbed\TPVariables.ps1"
If ($Textbox5.Text -ne "") {
(Get-Content .\TPVariables.ps1) |  foreach-object {$_.replace($RequiredVersionAX,$Textbox5.Text)} | set-content .\TPVariables.ps1
	}
}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$form1.BackgroundImage = [System.Drawing.Image]::FromFile('<<Computer>>\Pictures\Earth-On-Fire-HD-Wallpaper.jpg')
$form1.BackgroundImageLayout = 3
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 474
$System_Drawing_Size.Width = 656
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon('<<Computer>>\Desktop\SAS_small.ico')
$form1.Name = "form1"
$form1.Text = "SAS Third Party Version Configuration"
$form1.add_Load($handler_form1_Load)

$label6.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 523
$System_Drawing_Point.Y = 207
$label6.Location = $System_Drawing_Point
$label6.Name = "label6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label6.Size = $System_Drawing_Size
$label6.TabIndex = 45
$label6.Text = "EMET"
$label6.TextAlign = 32

$form1.Controls.Add($label6)

$label5.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 303
$System_Drawing_Point.Y = 207
$label5.Location = $System_Drawing_Point
$label5.Name = "label5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label5.Size = $System_Drawing_Size
$label5.TabIndex = 44
$label5.Text = "Mozilla Firefox"
$label5.TextAlign = 32

$form1.Controls.Add($label5)

$label4.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 87
$System_Drawing_Point.Y = 207
$label4.Location = $System_Drawing_Point
$label4.Name = "label4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label4.Size = $System_Drawing_Size
$label4.TabIndex = 43
$label4.Text = "Adobe Shockwave"
$label4.TextAlign = 32

$form1.Controls.Add($label4)

$label3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 523
$System_Drawing_Point.Y = 49
$label3.Location = $System_Drawing_Point
$label3.Name = "label3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label3.Size = $System_Drawing_Size
$label3.TabIndex = 42
$label3.Text = "Flash Plugin"
$label3.TextAlign = 32

$form1.Controls.Add($label3)

$label2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 304
$System_Drawing_Point.Y = 49
$label2.Location = $System_Drawing_Point
$label2.Name = "label2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label2.Size = $System_Drawing_Size
$label2.TabIndex = 41
$label2.Text = "Flash ActiveX"
$label2.TextAlign = 32

$form1.Controls.Add($label2)

$label1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 88
$System_Drawing_Point.Y = 49
$label1.Location = $System_Drawing_Point
$label1.Name = "label1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$label1.Size = $System_Drawing_Size
$label1.TabIndex = 40
$label1.Text = "Adobe Reader"
$label1.TextAlign = 32

$form1.Controls.Add($label1)

$progressBar6.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 143
$progressBar6.Location = $System_Drawing_Point
$progressBar6.Name = "progressBar6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 10
$System_Drawing_Size.Width = 156
$progressBar6.Size = $System_Drawing_Size
$progressBar6.TabIndex = 39

$form1.Controls.Add($progressBar6)

$progressBar5.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 143
$progressBar5.Location = $System_Drawing_Point
$progressBar5.Name = "progressBar5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 10
$System_Drawing_Size.Width = 156
$progressBar5.Size = $System_Drawing_Size
$progressBar5.TabIndex = 38

$form1.Controls.Add($progressBar5)

$progressBar4.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 303
$progressBar4.Location = $System_Drawing_Point
$progressBar4.Name = "progressBar4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 10
$System_Drawing_Size.Width = 156
$progressBar4.Size = $System_Drawing_Size
$progressBar4.TabIndex = 37

$form1.Controls.Add($progressBar4)

$progressBar3.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 304
$progressBar3.Location = $System_Drawing_Point
$progressBar3.Name = "progressBar3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 10
$System_Drawing_Size.Width = 156
$progressBar3.Size = $System_Drawing_Size
$progressBar3.TabIndex = 36

$form1.Controls.Add($progressBar3)

$progressBar2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 304
$progressBar2.Location = $System_Drawing_Point
$progressBar2.Name = "progressBar2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 10
$System_Drawing_Size.Width = 156
$progressBar2.Size = $System_Drawing_Size
$progressBar2.TabIndex = 35

$form1.Controls.Add($progressBar2)

$progressBar1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 144
$progressBar1.Location = $System_Drawing_Point
$progressBar1.Name = "progressBar1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 10
$System_Drawing_Size.Width = 155
$progressBar1.Size = $System_Drawing_Size
$progressBar1.TabIndex = 34

$form1.Controls.Add($progressBar1)


$button14.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 113
$System_Drawing_Point.Y = 423
$button14.Location = $System_Drawing_Point
$button14.Name = "button14"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button14.Size = $System_Drawing_Size
$button14.TabIndex = 33
$button14.Text = "button14"
$button14.UseVisualStyleBackColor = $True
$button14.add_Click($button14_OnClick)

$form1.Controls.Add($button14)


$button13.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 424
$button13.Location = $System_Drawing_Point
$button13.Name = "button13"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button13.Size = $System_Drawing_Size
$button13.TabIndex = 32
$button13.Text = "button13"
$button13.UseVisualStyleBackColor = $True
$button13.add_Click($button13_OnClick)

$form1.Controls.Add($button13)

$textBox7.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 398
$textBox7.Location = $System_Drawing_Point
$textBox7.Name = "textBox7"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$textBox7.Size = $System_Drawing_Size
$textBox7.TabIndex = 31

$form1.Controls.Add($textBox7)


$pictureBox7.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 56
$System_Drawing_Point.Y = 340
$pictureBox7.Location = $System_Drawing_Point
$pictureBox7.Name = "pictureBox7"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 100
$pictureBox7.Size = $System_Drawing_Size
$pictureBox7.TabIndex = 30
$pictureBox7.TabStop = $False

$form1.Controls.Add($pictureBox7)

$pictureBox6.BackgroundImage = [System.Drawing.Image]::FromFile('<<Computer>>\Pictures\EMET.png')
$pictureBox6.BackgroundImageLayout = 3
$pictureBox6.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 192
$pictureBox6.Location = $System_Drawing_Point
$pictureBox6.Name = "pictureBox6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 54
$pictureBox6.Size = $System_Drawing_Size
$pictureBox6.TabIndex = 29
$pictureBox6.TabStop = $False
$pictureBox6.add_Click($handler_pictureBox6_Click)

$form1.Controls.Add($pictureBox6)

$pictureBox5.BackgroundImage = [System.Drawing.Image]::FromFile('<<Computer>>\Pictures\Firefiox-icon.jpg')
$pictureBox5.BackgroundImageLayout = 3
$pictureBox5.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 192
$pictureBox5.Location = $System_Drawing_Point
$pictureBox5.Name = "pictureBox5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 51
$pictureBox5.Size = $System_Drawing_Size
$pictureBox5.TabIndex = 28
$pictureBox5.TabStop = $False
$pictureBox5.add_Click($handler_pictureBox5_Click)

$form1.Controls.Add($pictureBox5)

$pictureBox4.BackgroundImage = [System.Drawing.Image]::FromFile('<<Computer>>\Pictures\Adobe-Shockwave-icon.jpg')
$pictureBox4.BackgroundImageLayout = 3
$pictureBox4.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 192
$pictureBox4.Location = $System_Drawing_Point
$pictureBox4.Name = "pictureBox4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 52
$pictureBox4.Size = $System_Drawing_Size
$pictureBox4.TabIndex = 27
$pictureBox4.TabStop = $False

$form1.Controls.Add($pictureBox4)

$pictureBox3.BackgroundImage = [System.Drawing.Image]::FromFile('<<Computer>>\Pictures\Adobe-Flash-icon.jpg')
$pictureBox3.BackgroundImageLayout = 3
$pictureBox3.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 32
$pictureBox3.Location = $System_Drawing_Point
$pictureBox3.Name = "pictureBox3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 54
$pictureBox3.Size = $System_Drawing_Size
$pictureBox3.TabIndex = 26
$pictureBox3.TabStop = $False

$form1.Controls.Add($pictureBox3)

$pictureBox2.BackgroundImage = [System.Drawing.Image]::FromFile('<<Computer>>\Pictures\Adobe-Flash-icon.jpg')
$pictureBox2.BackgroundImageLayout = 3
$pictureBox2.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 32
$pictureBox2.Location = $System_Drawing_Point
$pictureBox2.Name = "pictureBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 51
$pictureBox2.Size = $System_Drawing_Size
$pictureBox2.TabIndex = 25
$pictureBox2.TabStop = $False

$form1.Controls.Add($pictureBox2)

$pictureBox1.BackgroundImage = [System.Drawing.Image]::FromFile('<<Computer>>\Pictures\Adobe-Acrobat-Reader-icon.png')
$pictureBox1.BackgroundImageLayout = 3
$pictureBox1.DataBindings.DefaultDataSourceUpdateMode = 0



$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 32
$pictureBox1.Location = $System_Drawing_Point
$pictureBox1.Name = "pictureBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 52
$pictureBox1.Size = $System_Drawing_Size
$pictureBox1.TabIndex = 24
$pictureBox1.TabStop = $False

$form1.Controls.Add($pictureBox1)


$button12.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 274
$button12.Location = $System_Drawing_Point
$button12.Name = "button12"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button12.Size = $System_Drawing_Size
$button12.TabIndex = 23
$button12.Text = "Current"
$button12.UseVisualStyleBackColor = $True
$button12.add_Click($button12_OnClick)

$form1.Controls.Add($button12)


$button11.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 274
$button11.Location = $System_Drawing_Point
$button11.Name = "button11"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button11.Size = $System_Drawing_Size
$button11.TabIndex = 22
$button11.Text = "Current"
$button11.UseVisualStyleBackColor = $True
$button11.add_Click($button11_OnClick)

$form1.Controls.Add($button11)


$button10.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 274
$button10.Location = $System_Drawing_Point
$button10.Name = "button10"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button10.Size = $System_Drawing_Size
$button10.TabIndex = 21
$button10.Text = "Current"
$button10.UseVisualStyleBackColor = $True
$button10.add_Click($button10_OnClick)

$form1.Controls.Add($button10)


$button9.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 114
$button9.Location = $System_Drawing_Point
$button9.Name = "button9"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button9.Size = $System_Drawing_Size
$button9.TabIndex = 20
$button9.Text = "Current"
$button9.UseVisualStyleBackColor = $True
$button9.add_Click($button9_OnClick)

$form1.Controls.Add($button9)


$button8.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 114
$button8.Location = $System_Drawing_Point
$button8.Name = "button8"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button8.Size = $System_Drawing_Size
$button8.TabIndex = 19
$button8.Text = "Current"
$button8.UseVisualStyleBackColor = $True
$button8.add_Click($button8_OnClick)

$form1.Controls.Add($button8)


$button7.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 114
$button7.Location = $System_Drawing_Point
$button7.Name = "button7"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button7.Size = $System_Drawing_Size
$button7.TabIndex = 18
$button7.Text = "Current"
$button7.UseVisualStyleBackColor = $True
$button7.add_Click($button7_OnClick)

$form1.Controls.Add($button7)


$button6.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 544
$System_Drawing_Point.Y = 274
$button6.Location = $System_Drawing_Point
$button6.Name = "button6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button6.Size = $System_Drawing_Size
$button6.TabIndex = 17
$button6.Text = "Update Now"
$button6.UseVisualStyleBackColor = $True
$button6.add_Click($button6_OnClick)

$form1.Controls.Add($button6)


$button5.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 329
$System_Drawing_Point.Y = 274
$button5.Location = $System_Drawing_Point
$button5.Name = "button5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button5.Size = $System_Drawing_Size
$button5.TabIndex = 16
$button5.Text = "Update Now"
$button5.UseVisualStyleBackColor = $True
$button5.add_Click($button5_OnClick)

$form1.Controls.Add($button5)


$button4.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 114
$System_Drawing_Point.Y = 274
$button4.Location = $System_Drawing_Point
$button4.Name = "button4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button4.Size = $System_Drawing_Size
$button4.TabIndex = 15
$button4.Text = "Update Now"
$button4.UseVisualStyleBackColor = $True
$button4.add_Click($button4_OnClick)

$form1.Controls.Add($button4)


$button3.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 544
$System_Drawing_Point.Y = 114
$button3.Location = $System_Drawing_Point
$button3.Name = "button3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button3.Size = $System_Drawing_Size
$button3.TabIndex = 14
$button3.Text = "Update Now"
$button3.UseVisualStyleBackColor = $True
$button3.add_Click($button3_OnClick)

$form1.Controls.Add($button3)


$button2.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 329
$System_Drawing_Point.Y = 114
$button2.Location = $System_Drawing_Point
$button2.Name = "button2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button2.Size = $System_Drawing_Size
$button2.TabIndex = 13
$button2.Text = "Update Now"
$button2.UseVisualStyleBackColor = $True
$button2.add_Click($button2_OnClick)

$form1.Controls.Add($button2)


$button1.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 114
$System_Drawing_Point.Y = 114
$button1.Location = $System_Drawing_Point
$button1.Name = "button1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$button1.Size = $System_Drawing_Size
$button1.TabIndex = 12
$button1.Text = "Update Now"
$button1.UseVisualStyleBackColor = $True
$button1.add_Click($button1_OnClick)

$form1.Controls.Add($button1)

$textBox6.BackColor = [System.Drawing.Color]::FromArgb(255,67,78,84)
$textBox6.DataBindings.DefaultDataSourceUpdateMode = 0
$textBox6.ForeColor = [System.Drawing.Color]::FromArgb(255,255,255,225)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 88
$textBox6.Location = $System_Drawing_Point
$textBox6.Name = "textBox6"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$textBox6.Size = $System_Drawing_Size
$textBox6.TabIndex = 11
$textBox6.add_TextChanged($handler_textBox6_TextChanged)

$form1.Controls.Add($textBox6)

$textBox5.BackColor = [System.Drawing.Color]::FromArgb(255,67,78,84)
$textBox5.DataBindings.DefaultDataSourceUpdateMode = 0
$textBox5.ForeColor = [System.Drawing.Color]::FromArgb(255,255,255,225)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 88
$textBox5.Location = $System_Drawing_Point
$textBox5.Name = "textBox5"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$textBox5.Size = $System_Drawing_Size
$textBox5.TabIndex = 10

$form1.Controls.Add($textBox5)

$textBox4.BackColor = [System.Drawing.Color]::FromArgb(255,67,78,84)
$textBox4.DataBindings.DefaultDataSourceUpdateMode = 0
$textBox4.ForeColor = [System.Drawing.Color]::FromArgb(255,255,255,225)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 88
$textBox4.Location = $System_Drawing_Point
$textBox4.Name = "textBox4"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$textBox4.Size = $System_Drawing_Size
$textBox4.TabIndex = 9

$form1.Controls.Add($textBox4)

$textBox3.BackColor = [System.Drawing.Color]::FromArgb(255,67,78,84)
$textBox3.DataBindings.DefaultDataSourceUpdateMode = 0
$textBox3.ForeColor = [System.Drawing.Color]::FromArgb(255,255,255,225)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 33
$System_Drawing_Point.Y = 248
$textBox3.Location = $System_Drawing_Point
$textBox3.Name = "textBox3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$textBox3.Size = $System_Drawing_Size
$textBox3.TabIndex = 8

$form1.Controls.Add($textBox3)

$textBox2.BackColor = [System.Drawing.Color]::FromArgb(255,67,78,84)
$textBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$textBox2.ForeColor = [System.Drawing.Color]::FromArgb(255,255,255,225)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 248
$System_Drawing_Point.Y = 248
$textBox2.Location = $System_Drawing_Point
$textBox2.Name = "textBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$textBox2.Size = $System_Drawing_Size
$textBox2.TabIndex = 7

$form1.Controls.Add($textBox2)

$textBox1.BackColor = [System.Drawing.Color]::FromArgb(255,67,78,84)
$textBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$textBox1.ForeColor = [System.Drawing.Color]::FromArgb(255,255,255,225)
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 463
$System_Drawing_Point.Y = 248
$textBox1.Location = $System_Drawing_Point
$textBox1.Name = "textBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$textBox1.Size = $System_Drawing_Size
$textBox1.TabIndex = 6
$textBox1.add_TextChanged($handler_textBox1_TextChanged)

$form1.Controls.Add($textBox1)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
