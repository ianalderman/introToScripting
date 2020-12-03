#OK now let's assign the variables from the command line.  Note we could do this via named arguments
$ResourceGroupName = $Args[0]
$VirtualMachineName = $Args[0]

New-AzResourceGroup -Name $ResourceGroupName -Location NorthEurope
#Note how we have re-used the resource Group Name variable, now when we change the Resource Group Name we only have to update one place rather than 2
New-AzVm -ResourceGroupName $ResourceGroupName -Name $VirtualMachineName -Location "NorthEurope"