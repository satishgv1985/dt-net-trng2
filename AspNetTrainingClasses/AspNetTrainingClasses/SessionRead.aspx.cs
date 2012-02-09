using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class SessionRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Application["noOfTimes"] = Convert.ToInt32(Application["noOfTimes"]) + 1;
            lblSessionValue.Text = Convert.ToString(Session["name"]);
        }
    }
}