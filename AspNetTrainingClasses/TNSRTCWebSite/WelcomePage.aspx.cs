using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TNSRTC;

namespace TNSRTCWebSite
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(8000);
            UserDetail ud = (UserDetail)Session["userDetails"];
            if (ud.RoleId != 1)
            {
                Response.Redirect("user/WelcomeUser.aspx");
            }
            else if (ud.RoleId == 1)
                Response.Redirect("Admin/ManageBus.aspx");

        }
    }
}