using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace AspWCFProject
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CustomerService" in code, svc and config file together.
    public class CustomerService : ICustomerService
    {


        public CustomerDetail GetCustomerById(int custId)
        {
            //access the db to get the details of customer from Customer table
            CustomerDetail cd = new CustomerDetail();
            cd.CustName = "Satish";
            cd.DateOfBirth = DateTime.Today;
            return cd;
        }
    }
}
