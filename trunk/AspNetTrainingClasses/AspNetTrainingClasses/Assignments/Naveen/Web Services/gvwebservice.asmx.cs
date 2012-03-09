using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace AspNetTrainingClasses.Assignments.Naveen.Web_Services
{
    /// <summary>
    /// Summary description for gvwebservice
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class gvwebservice : System.Web.Services.WebService
    {

        [WebMethod]
        public DataSet getProducts() 
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["NorthwindConnectionString"].ConnectionString);
            SqlDataAdapter myAdapter;
            DataSet productDataSet;
            string commandString = "Select Top 9 ProductID, ProductName, UnitPrice From Products";
            myAdapter = new SqlDataAdapter(commandString, conn);
            productDataSet = new DataSet();
            myAdapter.Fill(productDataSet);
            return productDataSet;  
        }
    }
}
