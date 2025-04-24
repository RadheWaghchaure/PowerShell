# Print first 10 even numbers

Write-Host "First 10 Even Numbers:"
for ($i = 1; $i -le 10; $i++) {
    $evenNumber = $i * 2
    Write-Host $evenNumber
}
