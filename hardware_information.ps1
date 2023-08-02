$computer = $env:COMPUTERNAME
$html = "<html><head><title>Hardware Info</title></head><body><h1>Hardware Info for $computer</h1><table><tr><th>Property</th><th>Value</th></tr>"
# Get CPU information
$cpu = Get-WmiObject -Class Win32_Processor
$html += "<tr><td>CPU</td><td>$($cpu.Name)</td></tr>"
$html += "<tr><td>Number of Cores</td><td>$($cpu.NumberOfCores)</td></tr>"
$html += "<tr><td>Number of Logical Processors</td><td>$($cpu.NumberOfLogicalProcessors)</td></tr>"
# Get RAM information
$ram = Get-WmiObject -Class Win32_PhysicalMemory | Measure-Object -Property capacity -Sum
$html += "<tr><td>Installed RAM</td><td>$([math]::Round($ram.Sum / 1GB, 2)) GB</td></tr>"
# Get hard disk information
$disks = Get-WmiObject -Class Win32_DiskDrive
foreach ($disk in $disks) {
    $html += "<tr><td>Disk</td><td>$($disk.Model)</td></tr>"
    $html += "<tr><td>Capacity</td><td>$([math]::Round($disk.Size / 1GB, 2)) GB</td></tr>"
}
$html += "</table></body></html>"
# Save HTML to file
$html | Out-File -FilePath "hardware_info.html" -Encoding UTF8
# Open HTML file in default browser
Invoke-Item "hardware_info.html"
