$inputFolder = ${env:INPUT}
$outputFolder = ${env:OUTPUT}

$chatFiles = Get-ChildItem $inputFolder

foreach ($file in $chatFiles)
{
    if ($file.Extension -eq ".chat")
    {
        $inputFile = Join-Path $inputFolder $file.Name
        $outputFile = Join-Path $outputFolder ($file.BaseName + ".json")
        .\Executable\BotTestFramework.Console.exe convertChatFile --path $inputFile --outputFile $outputFile
    }
}
 
