Get-PhysicalDisk | ForEach-Object {
    $disk = $_
    $vols = Get-Partition -DiskNumber $disk.DeviceId | Get-Volume
    foreach ($v in $vols) {
        [PSCustomObject]@{
            DriveLetter = $v.DriveLetter
            MediaType  = $disk.MediaType
            SizeGB      = [math]::Round($v.Size / 1GB, 2)
        }
    }
} | Format-Table -AutoSize @{Label='DriveLetter';Expression={$_.DriveLetter};Align='Left'}, MediaType, SizeGB
