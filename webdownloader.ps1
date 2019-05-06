$url = "https://pbs.twimg.com/profile_images/874276197357596672/kUuht00m_400x400.jpg"
$outputfile = "twitter.jpg"

$form = New-Object System.Windows.Forms.Form
$button = New-Object System.Windows.Forms.Button

$button.Text = "Download"

$button.add_click({
    $wc = New-Object System.Net.WebClient
    $wc.DownloadFile($url, $outputfile)
    $form.BackgroundImage = [System.Drawing.Image]::fromfile("twitter.jpg")
    $form.BackgroundImageLayout = "Stretch"
})

$form.Controls.Add($button)

$form.ShowDialog()

