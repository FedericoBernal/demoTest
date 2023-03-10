$folder = ${env:OUTPUT}

foreach ($file in Get-ChildItem $folder)
{
    if ($file.Extension -eq ".json")
    {
        $testFile = Join-Path $folder $file.Name
        .\Executable\BotTestFramework.Console.exe test --path $testFile --botId ${env:BOTID} --tenantId ${env:TENANTID} --verbose
        if ($LastExitCode -ne 0)
        {
            Exit $LastExitCode
        }
    }
}
