
$VMs = Get-AzVm -resourceGroupName "introToScriptingResourceGroup"

foreach ($vm in $vms) {
        if ($vm.name -eq "DemoVM2") {
            write-host "Found the second Demo VM!"
        }
}