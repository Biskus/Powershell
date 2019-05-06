$form = New-Object System.Windows.Forms.Form

$button = New-Object System.Windows.Forms.Button
$button.Text = "Restart"
$button.Add_Click({
    Write-Host Restarting networkadapter...
    $eth = Get-NetAdapter -Name Ethernet
    Restart-NetAdapter $eth.name
    Write-Host Done
})

$form.Controls.Add($button)

$form.ShowDialog()