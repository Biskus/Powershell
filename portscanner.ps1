

1..20 | % { $a = $_; 1..1024 | % {
    
    echo ((new-object Net.Sockets.TcpClient).Connect("192.168.0.$a",$_)) "Port $_ is open!"} 2>$null
    
    }