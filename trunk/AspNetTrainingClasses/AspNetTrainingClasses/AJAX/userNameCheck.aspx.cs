using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.AJAX
{
    public partial class userNameCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {
            // here we take the username and pass it to db and check whether already exists or not
            bool present = false;
            //lblMessage.Text = "checking...";

            System.Threading.Thread.Sleep(5000);

            if (present)
            {
                lblMessage.Text = "Already taken. Please user another name";
                lblMessage.CssClass = "taken";
            }
            else
            {
                lblMessage.Text = "Available";
                lblMessage.CssClass = "available";
            }
        }
    }
}