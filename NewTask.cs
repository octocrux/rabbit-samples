using System;
using RabbitMQ.Client;
using System.Text;

class NewTask
{
  public static void Main(string[] args){
    var factory = new ConnectionFactory(){ HostName = "localhost" };
    using(var connection = factory.CreateConnection()){
      using(var channel = connection.CreateModel()){
        bool durable = true;
        channel.QueueDeclare("task_queue", durable, false, false, null);

        var message = GetMessage(args);
        var body = Encoding.UTF8.GetBytes(message);
       	var properties = channel.CreateBasicProperties();
        properties.SetPersistent(true);
       	//properties.DeliveryMode = 2;

        channel.BasicPublish("", "task_queue", null, body);
        Console.WriteLine(" [x] Sent {0}", message);
      }
    }
  }

  private static string GetMessage(string[] args){
  	return ((args.Length > 0) ? string.Join(" ", args) : "Hello, world!");
  }
}