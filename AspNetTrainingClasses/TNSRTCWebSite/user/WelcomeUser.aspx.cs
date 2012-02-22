using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TNSRTC;

namespace TNSRTCWebSite.user
{
    public partial class WelcomeUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserDetail us = (UserDetail)Session["userDetails"];
            lblName.Text = us.FirstName + ", " + us.LastName;
        }
    }
}