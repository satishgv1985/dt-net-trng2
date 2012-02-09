using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.login
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblUser.Text = Convert.ToString(Session["username"]);
            //Application["noOfTimes"] = Convert.ToInt32(Application["noOfTimes"]) + 1;
            //lblAppvalue.Text = Convert.ToString(Application["noOfTimes"]);
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            Session.Clear();
            lblUser.Text = Convert.ToString(Session["username"]);
        }
    }
}