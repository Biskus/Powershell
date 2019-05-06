$drives = get-psdrive | Where-Object {$_.free -gt 1} 

$drives | ForEach-Object { 
write-host "Ledig diskplass for" $_.root "er" ("{0:n2}" -f ($_.free/1gb) ) "GB"  -ForegroundColor green 
}

$processes = Get-Process | where-object {$_.cpu -gt 0 } |  sort cpu 


$processes | ForEach-Object {
    if ($_.ProcessName.startswith('opera')) {
        write-host ($_.ProcessName   + " " + "{0:n2}" -f ($_.cpu))
    }
}



write-host
write-host ("Files now ! ")
write-host
$files = get-childitem | where-object { $_.name.startswith('hjem')}

foreach ($file in $files){
    write-host $file
}


#get open ports

$arr = New-Object System.Collections.Generic.List[System.Object]

$processes = Get-NetTCPConnection -State Listen -LocalAddress 0.0.0.0 | sort localport -Descending

foreach ($p in $processes){
    $detailed_process = (Get-Process -id $p.OwningProcess)
    write-host $p.State $p.localport $detailed_process.ProcessName

    #if ($processname -inotmatch 'svchost'){
        $arr.add($p)
        $arr.add($detailed_process)
    #}

}

foreach ($a in $arr){
    write-host($a.LocalPort + $a.processname + $a.OwningProcess)
}




