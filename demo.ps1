# Write-Output "=========================================================================="
# Write-Output "Hello, PowerShell!"
# Write-Output "=========================================================================="
# #Get-ChildItem .
# Write-Output "=========================================================================="

# $val = $($args[0])
# $name = $($args[1])

# if ($val -gt 1) {
#     Write-Output "True $name $val"
# } else {
#      Write-Output "False $name $val"
# }

# Write-Output "=========================================================================="

# # while ($val -gt 1) {
# #     Write-Output $val
# #     --$val
# # } 

# # Write-Output "=========================================================================="

# # for ($i = 0; $i -le 10; $i++) {
# #     Write-Output $i
# # }

# # Write-Output "=========================================================================="

# # $list = 1,3,5,7,9
# # foreach ($item in $list){
# #     Write-Output "Item $item"
# # }

# Write-Output "=========================================================================="


# $fileName = ".\demo.log"

# $fileContent = Get-Content -path $fileName
# Write-Output "=========================================================================="
# Write-Output $fileContent
# Write-Output "=========================================================================="
# Add-Content -path $fileName -Value "from code "

# $fileContent = Get-Content -path $fileName
# Write-Output "=========================================================================="
# Write-Output $fileContent
# Write-Output "=========================================================================="


try {
    $fileContent = Get-Content -path "fgigfawkg.txt" -ErrorAction Stop
    Write-Output $fileContent
} catch {
    Write-Output "Catch"
    $timeStamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $errorMessage = "$timeStamp:: Error: $_ "
    Write-Output $errorMessage
    Add-Content -path "./demo.log" -Value $errorMessage
}