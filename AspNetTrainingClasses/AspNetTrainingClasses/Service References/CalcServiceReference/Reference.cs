﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.239
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AspNetTrainingClasses.CalcServiceReference {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="CalcServiceReference.ICalculationWCFService")]
    public interface ICalculationWCFService {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICalculationWCFService/DoWork", ReplyAction="http://tempuri.org/ICalculationWCFService/DoWorkResponse")]
        void DoWork();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/ICalculationWCFService/Addition", ReplyAction="http://tempuri.org/ICalculationWCFService/AdditionResponse")]
        double Addition(double a, double b);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface ICalculationWCFServiceChannel : AspNetTrainingClasses.CalcServiceReference.ICalculationWCFService, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class CalculationWCFServiceClient : System.ServiceModel.ClientBase<AspNetTrainingClasses.CalcServiceReference.ICalculationWCFService>, AspNetTrainingClasses.CalcServiceReference.ICalculationWCFService {
        
        public CalculationWCFServiceClient() {
        }
        
        public CalculationWCFServiceClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public CalculationWCFServiceClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CalculationWCFServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public CalculationWCFServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public void DoWork() {
            base.Channel.DoWork();
        }
        
        public double Addition(double a, double b) {
            return base.Channel.Addition(a, b);
        }
    }
}
