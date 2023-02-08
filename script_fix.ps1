$result = ./Executable/BotTestFramework.Console_fix.exe test --path ${env:FILEPATH} --botId ${env:BOTID} --tenantId ${env:TENANTID}

if (0 -qa $result)
{
    Exit 100
}
Exit 0