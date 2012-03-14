using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;
using System.ServiceModel;

namespace OrdersWcfServiceLibrary
{
    [DataContract]
    public class Order
    {
        [DataMember]
        public int OrderId;
        [DataMember]
        public string OrderAddress;
        [DataMember]
        public DateTime OrderDate;
    }

    [ServiceContract]
    public interface IOrderService
    {
        [OperationContract]
         Order GetOrderById(int id);
        [OperationContract]
         void PlaceOrder(Order o);
    }

    public class OrderService :IOrderService
    {
        List<Order> listOrders = new List<Order>();
        public Order GetOrderById(int id)
        {
            return listOrders.Find(x => x.OrderId == id);
        }

        public void PlaceOrder(Order o)
        {
            listOrders.Add(o);
        }
    }
}
