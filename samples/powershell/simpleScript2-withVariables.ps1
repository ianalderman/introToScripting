#Let's introduce variables
$ResourceGroupName = "loyaltyDatabases"
$VirtualMachineName = "DBVM3"

New-AzResourceGroup -Name $ResourceGroupName -Location NorthEurope
#Note how we have re-used the resource Group Name variable, now when we change the Resource Group Name we only have to update one place rather than 2
#Note this is not fully automated as we still need to add some input but we shall gloss over that for now
New-AzVm -ResourceGroupName $ResourceGroupName -Name $VirtualMachineName -Location "NorthEurope"
