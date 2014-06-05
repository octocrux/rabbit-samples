rem csc /out:Send.exe /r:"RabbitMQ.Client.dll" Send.cs
rem csc /out:Receive.exe /r:"RabbitMQ.Client.dll" Receive.cs

rem csc /out:NewTask.exe /r:"RabbitMQ.Client.dll" NewTask.cs
rem csc /out:Worker.exe /r:"RabbitMQ.Client.dll" Worker.cs

rem csc /r:"RabbitMQ.Client.dll" EmitLogs.cs
rem csc /r:"RabbitMQ.Client.dll" ReceiveLogs.cs

csc /r:"RabbitMQ.Client.dll" EmitLogDirect.cs
csc /r:"RabbitMQ.Client.dll" ReceiveLogsDirect.cs