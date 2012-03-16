using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;
using System.ServiceModel;

namespace CustomerWcfServiceLibrary
{
    [DataContract]
    public class Customer
    {
        [DataMember]
        public int CustId;
        [DataMember]
        public string CustName;
        [DataMember]
        public DateTime DateOfBirth;
    }

    [ServiceContract]
    public interface ICustomerService
    {
        [OperationContract(IsOneWay=true)]
        void InsertCustomer(Customer c);
        [OperationContract]
        List<Customer> GetCustomers();

        [OperationContract]
        Customer FindCustomerById(int id);
    }

  
    public class CustomerService:ICustomerService
    {
        List<Customer> listCust = new List<Customer>();
        public void InsertCustomer(Customer c)
        {
            listCust.Add(c);
        }

        public List<Customer> GetCustomers()
        {
            return listCust;
        }

        public Customer FindCustomerById(int id)
        {
            foreach (var cust in listCust)
            {
                if (cust.CustId == id)
                    return cust;
            }

           //return listCust.Find(x => x.CustId == id);
            return null;
        }
    }
}
