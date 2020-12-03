#Simple Script taking our initial commands.
New-AzResourceGroup -Name loyaltyDatabases -Location NorthEurope
#This line doesn't actually achieve anything as the VM already exists (if we did the command demos)
New-AzVm -ResourceGroupName loyaltyDatabases -Name DBVM1 -Location "NorthEurope"
#This line creates another VM
New-AzVm -ResourceGroupName loyaltyDatabases -Name DBVM2 -Location "NorthEurope"
