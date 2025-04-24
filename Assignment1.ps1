
$serviceName = "TermService" 
# Get the service status
$service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

# Check if the service exists
if ($null -eq $service) {
    Write-Host "Service '$serviceName' not found." -ForegroundColor Red
} else {
        #Checking the status
    if ($service.Status -eq "Running") {
        Write-Host "Service '$serviceName' is currently running. Attempting to stop it..." -ForegroundColor Yellow
        try {
            #stop the service if its running
            Stop-Service -Name $serviceName -Force
            Write-Host "Service '$serviceName' has been stopped." -ForegroundColor Green
        } catch {
            Write-Host "Failed to stop the service: $_" -ForegroundColor Red
        }
    } else {
        Write-Host "Service '$serviceName' is not running. Attempting to start it..." -ForegroundColor Yellow
        try {
            #running the service if its stop 
            Start-Service -Name $serviceName
            Write-Host "Service '$serviceName' has been started." -ForegroundColor Green
        } catch {
            Write-Host "Failed to start the service: $_" -ForegroundColor Red
        }
    }
}
