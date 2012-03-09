using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;

namespace AspWCFProject
{
    [DataContract]
    public class CustomerDetail
    {
        [DataMember]
        public int CustomerId { get; set; }
        [DataMember]
        public string CustName { get; set; }
        [DataMember]
        public DateTime DateOfBirth { get; set; }
    }
}