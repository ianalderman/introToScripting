$resourceGroupName = $Args[0]
$virtualMachineName = $Args[1]

function Get-DemoVM {
    Param ([string]$resourceGroup,[string]$vmToFind)

    $VMs = Get-AzVm -resourceGroupName $resourceGroup

    foreach ($vm in $vms) {
        if ($vm.name -eq $vmToFind) {
            write-host "Found the second Demo VM!"
        }
    }
}

Get-DemoVM -resourceGroup $resourceGroupName -vmToFind $virtualMachineName
