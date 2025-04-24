
$firstNumber = Read-Host "Enter the first number"
$secondNumber = Read-Host "Enter the second number"

# Convert inputs to numbers 
$firstNumber = [int]$firstNumber
$secondNumber = [int]$secondNumber

# Add the numbers
$sum = $firstNumber + $secondNumber
Write-Host "The sum of $firstNumber and $secondNumber is: $sum"
