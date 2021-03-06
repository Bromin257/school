#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 27/01/2020 08:50
# Generated By: ArminGyurinovits
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form_MainMenu = New-Object System.Windows.Forms.Form
$button_UserManagement = New-Object System.Windows.Forms.Button
$button_GroupManagement = New-Object System.Windows.Forms.Button
$button_Exit = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$button_GroupManagement_OnClick= 
{
	#Close current form
	$form_MainMenu.Dispose()
	#Open Group Management form
	& '.\GroupManagement.ps1'
}

$button_Exit_OnClick= 
{
	#Close form
    $form_MainMenu.Close()
}

$button_UserManagement_OnClick= 
{
	#Close current form
	$form_MainMenu.Dispose()
	#Open User Management form
	& '.\UserManagement.ps1'
}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form_MainMenu.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 175
$System_Drawing_Size.Width = 415
$form_MainMenu.ClientSize = $System_Drawing_Size
$form_MainMenu.DataBindings.DefaultDataSourceUpdateMode = 0
$form_MainMenu.Name = "form_MainMenu"
$form_MainMenu.Text = "Main Menu"
$CenterScreen = [System.Windows.Forms.FormStartPosition]::CenterScreen;
$form_MainMenu.StartPosition = $CenterScreen;


$button_UserManagement.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 70
$button_UserManagement.Location = $System_Drawing_Point
$button_UserManagement.Name = "button_UserManagement"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 51
$System_Drawing_Size.Width = 389
$button_UserManagement.Size = $System_Drawing_Size
$button_UserManagement.TabIndex = 4
$button_UserManagement.Text = "User Management"
$button_UserManagement.UseVisualStyleBackColor = $True
$button_UserManagement.add_Click($button_UserManagement_OnClick)

$form_MainMenu.Controls.Add($button_UserManagement)


$button_GroupManagement.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 13
$button_GroupManagement.Location = $System_Drawing_Point
$button_GroupManagement.Name = "button_GroupManagement"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 51
$System_Drawing_Size.Width = 389
$button_GroupManagement.Size = $System_Drawing_Size
$button_GroupManagement.TabIndex = 3
$button_GroupManagement.Text = "Group Management"
$button_GroupManagement.UseVisualStyleBackColor = $True
$button_GroupManagement.add_Click($button_GroupManagement_OnClick)

$form_MainMenu.Controls.Add($button_GroupManagement)


$button_Exit.DataBindings.DefaultDataSourceUpdateMode = 0
$button_Exit.Font = New-Object System.Drawing.Font("Microsoft Sans Serif",9,0,3,1)

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 137
$button_Exit.Location = $System_Drawing_Point
$button_Exit.Name = "button_Exit"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 389
$button_Exit.Size = $System_Drawing_Size
$button_Exit.TabIndex = 2
$button_Exit.Text = "Exit"
$button_Exit.UseVisualStyleBackColor = $True
$button_Exit.add_Click($button_Exit_OnClick)

$form_MainMenu.Controls.Add($button_Exit)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form_MainMenu.WindowState
#Init the OnLoad event to correct the initial state of the form
$form_MainMenu.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form_MainMenu.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
