using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BusinessLogic
{
    public class Customer
    {
        private int _ID;
        public int ID
        {
            set { _ID= value; }
            get { return _ID; }
        }


     
        public string Name { get; set; }
        public string Address { get; set; }
    }
}
