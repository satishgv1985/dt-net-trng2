using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace AspWCFProject
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "CalculationWCFService" in code, svc and config file together.
    public class CalculationWCFService : ICalculationWCFService
    {
        public void DoWork()
        {
        }
        public double Addition(double x, double y)
        {
            return x + y;
        }
    }
}
