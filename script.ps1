param (
    [string]$city = "New York"
)

$uscities_table = Import-Csv -Path .\simplemaps_uscities_basicv1.90\uscities.csv

$uscities_table | ForEach-Object -Process {
    if ($_.city -eq $city) {
        Write-Output "Latitude: $($_.lat)"
        Write-Output "Longitude: $($_.lng)"
        Write-Output "State: $($_.state_name)"
        break
    }
}
