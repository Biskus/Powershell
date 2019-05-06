$form = New-Object System.Windows.Forms.Form

$button = New-Object System.Windows.Forms.Button
$button.Text = "Min Knapp"
$button.Add_Click({
    Write-Host Hei
})

$form.Controls.Add($button)

$form.ShowDialog()