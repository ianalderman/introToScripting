#Let's introduce variables
$ResourceGroupName = "introToScriptingResourceGroup"
$VirtualMachineName = "DemoVM1"
$User = "myAdminUser"

$Password = ConvertTo-SecureString "Password" -AsPlainText -Force "YouShouldNeverEverSavePasswordsInAScript!1"
$Credential = New-Object System.Management.Automation.PSCredential ($User, $Password);

New-AzResourceGroup -Name $ResourceGroupName -Location NorthEurope
#Note how we have re-used the resource Group Name variable, now when we change the Resource Group Name we only have to update one place rather than 2
#We have also added User and Password as they were required to build the machine and our goal is to not require any input from us.
New-AzVm -ResourceGroupName $ResourceGroupName -Name $VirtualMachineName -Location "NorthEurope" -Credential $Credential





