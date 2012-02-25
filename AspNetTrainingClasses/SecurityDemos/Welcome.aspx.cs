using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SecurityDemos
{
    public partial class Welcome1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Diagnostics.Debugger.Launch();
            if (User.IsInRole("admingroup"))
                Response.Redirect("admin/Managedata.aspx");
            else
                Response.Redirect("user/WelcomeUser.aspx");
        }
    }
}