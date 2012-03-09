using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.wcf
{
    public partial class GetCustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CustServiceReference.CustomerServiceClient csc = new CustServiceReference.CustomerServiceClient();
            CustServiceReference.CustomerDetail cdetail = new CustServiceReference.CustomerDetail();
            cdetail=csc.GetCustomerById(Convert.ToInt16(txtCustomerId.Text));
            lblName.Text = cdetail.CustName;
            lblDOB.Text = cdetail.DateOfBirth.ToString();
        }
    }
}