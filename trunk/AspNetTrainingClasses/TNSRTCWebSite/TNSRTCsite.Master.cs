using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace TNSRTCWebSite
{
    public partial class TNSRTCsite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lbLogOut.Visible = false;
            if (Session["userDetails"] != null)
                lbLogOut.Visible = true;
            //else
            //    FormsAuthentication.RedirectToLoginPage();
        }

        protected void lbLogOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}