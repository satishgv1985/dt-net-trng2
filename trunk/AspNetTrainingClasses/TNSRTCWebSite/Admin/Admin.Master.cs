using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TNSRTC;

namespace TNSRTCWebSite.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             //Session["userDetails"]
            UserDetail ud =(UserDetail) Session["userDetails"];
            if (ud.RoleId != 0)
            {
                Response.Redirect("ErrorPage.aspx");
            }
        }
    }
}