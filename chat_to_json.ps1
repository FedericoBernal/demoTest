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
        .\Executable\BotTestFramework.Console_fix.exe convertChatFile --path $inputFile --outputFileOption $outputFile
        .\Executable\BotTestFramework.Console_fix.exe test --path $outputFile --botId 53742b3a-1f04-485c-878c-eca03005a462 --tenantId " " --verbose
    }
}
 
