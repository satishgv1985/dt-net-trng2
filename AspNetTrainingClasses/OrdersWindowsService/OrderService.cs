using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.ServiceModel;

namespace OrdersWindowsService
{
    public partial class OrderService : ServiceBase
    {
        ServiceHost svc = new ServiceHost(typeof(OrdersWcfServiceLibrary.OrderService));
       
        public OrderService()
        {
            InitializeComponent();
           
            
        }

        protected override void OnStart(string[] args)
        {
            svc.Open();
        }

        protected override void OnStop()
        {
            svc.Close();
        }
    }
}
