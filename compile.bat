csc /out:Send.exe /r:"RabbitMQ.Client.dll" Send.cs
csc /out:Receive.exe /r:"RabbitMQ.Client.dll" Receive.cs

csc /out:NewTask.exe /r:"RabbitMQ.Client.dll" NewTask.cs
csc /out:Worker.exe /r:"RabbitMQ.Client.dll" Worker.cs