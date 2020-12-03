#OK now let's assign the variables from the command line.  Note we could do this via named arguments
$ResourceGroupName = $1
$VirtualMachineName = $2

az group create --name $ResourceGroupName --location northeurope
#Note how we have re-used the resource Group Name variable, now when we change the Resource Group Name we only have to update one place rather than 2
#Note this is not fully automated as we still need to add some input but we shall gloss over that for now
az vm create -g $ResourceGroupName --location northeurope -n $VirtualMachineName --image UbuntuLTS