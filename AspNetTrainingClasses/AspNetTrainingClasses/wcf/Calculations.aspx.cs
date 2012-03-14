using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.wcf
{
    public partial class Calculations : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            CalcServiceReference.CalculationWCFServiceClient cswcf = new CalcServiceReference.CalculationWCFServiceClient();
            lblAnswer.Text = Convert.ToString(cswcf.Addition(Convert.ToDouble(txtFirstNo.Text), Convert.ToDouble(txtSecondNo.Text)));
            lblSub.Text = Convert.ToString(cswcf.Subtraction(Convert.ToInt32(txtFirstNo.Text), Convert.ToInt32(txtSecondNo.Text)));
        }
    }
}