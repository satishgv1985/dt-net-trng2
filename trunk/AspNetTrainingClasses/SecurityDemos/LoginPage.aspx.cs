using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace SecurityDemos
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Exception ex=new Exception();
            //throw ex;
            if (true)
            {

                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);


                //FormsAuthentication.SetAuthCookie(txtUserName.Text, false);

               

            }
        }
    }
}