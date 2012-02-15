using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BusinessLogic
{
   public class CustomerDAL
    {
        public static List<Customer> GetCustomers()
        {
            List<Customer> cust = new List<Customer>();

            var customer = new Customer()
                {
                    ID = 1,
                    Name = "First Customer",
                    Address = "Maratahalli"
                };

            cust.Add(customer);
            customer = new Customer()
            {
                ID = 2,
                Name = "Second Customer",
                Address = "Maratahalli"
            };

            cust.Add(customer);
            return cust;
        }
    }
}
