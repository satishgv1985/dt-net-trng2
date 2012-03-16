using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.ServiceModel;
using CustomerWcfServiceLibrary;

namespace CustomerConsoleApplication
{
    class Program
    {
        static void Main(string[] args)
        {
            ServiceHost host = new ServiceHost(typeof(CustomerService));
            /*
            host.AddServiceEndpoint(typeof(ICustomerService), new BasicHttpBinding(), "http://localhost:8004/Customer/basichttp");
            host.AddServiceEndpoint(typeof(ICustomerService), new NetTcpBinding(), "net.tcp://localhost:8002/Customer/tcpip");
            */
             host.Open();
            CheckServiceHosted(host);
            Console.ReadLine();
            host.Close();
        }

        public static void CheckServiceHosted(ServiceHost hosts)
        {
            Console.WriteLine(hosts.Description.Name+"----");
            foreach (var ho in hosts.Description.Endpoints)
            {
                Console.WriteLine(ho.Address);
            }

        }
    }
}
