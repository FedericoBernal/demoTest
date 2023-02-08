$inputFolder = ${env:INPUT}
$outputFolder = ${env:OUTPUT}

Write-Host $inputFolder
Write-Host $outputFolder

$chatFiles = Get-ChildItem $inputFolder

foreach ($file in $chatFiles)
{
    if ($file.Extension -eq ".chat")
    {
        $inputFile = Join-Path $inputFolder $file.Name
        $outputFile = Join-Path $outputFolder ($file.BaseName + ".json")
        .\BotTestFramework.Console.exe convertChatFile --path $inputFile --outputFile $outputFile
    }
}
