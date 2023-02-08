#./Executable/BotTestFramework.Console_fix.exe test --path ${env:FILEPATH} --botId ${env:BOTID} --tenantId ${env:TENANTID}
./Executable/BotTestFramework.Console_fix.exe convertChatFile --path ./Tests/basic_transcript.chat --outputFileOption ./Tests/converted.json
./Executable/BotTestFramework.Console_fix.exe test --path ./Tests/converted.json --botId ${env:BOTID} --tenantId ${env:TENANTID}