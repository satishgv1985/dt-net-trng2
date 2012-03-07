using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TNSRTC;
using System.Web.Security;

namespace TNSRTCWebSite.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userDetails"] == null)
            {
                FormsAuthentication.RedirectToLoginPage();
                return;
            }

            UserDetail ud =(UserDetail) Session["userDetails"];
            if (ud.RoleId != 1)
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
        }
    }
}