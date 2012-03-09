using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace AspWCFProject
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "ICalculationWCFService" in both code and config file together.
    [ServiceContract]
    public interface ICalculationWCFService
    {
        [OperationContract]
        void DoWork();

        [OperationContract]
        double Addition(double a, double b);
    }
}
