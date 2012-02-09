using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.login
{
    public partial class loginPage : System.Web.UI.Page
    {
        static int count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            count++;
            //lblVisits.Text = count.ToString();
            Application.Lock();
            Application["noOfTimes"] = Convert.ToInt32(Application["noOfTimes"]) + 1;
            
            lblVisits.Text = Convert.ToString(Application["noOfTimes"]);
            Application.UnLock();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Read username, password and send it to db to validate the user
            //if valid - redirect to some welcome.aspx
            //if invalid -  show error message

            if (true)
            {
                Session["username"] = txtUserName.Text;
                Response.Redirect("~/login/welcome.aspx");
            }
        }
    }
}