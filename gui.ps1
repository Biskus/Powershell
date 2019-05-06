

"
https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.form?view=netframework-4.8
"
$form = new-object system.windows.forms.form
$form.StartPosition = "centerscreen"
$form.icon = New-Object System.Drawing.Icon('desktop\git\powershell\trump.ico')
$background = [system.drawing.image]::fromfile("desktop\git\powershell\trump.ico")
$form.backgroundimage = $background
$form.backgroundimagelayout = "stretch"

$button = New-Object System.Windows.Forms.Button
$button.text = 'hello'
$button.location = '200,200'

$folderbrowser = New-Object System.Windows.Forms.FolderBrowserDialog



$button.add_click({
    $folderbrowser.ShowDialog()
    
})





$form.controls.Add($button)


$form.ShowDialog()