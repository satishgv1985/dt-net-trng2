using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class FormSubmitted : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strName = Request.QueryString["name"];
            string strID = Request.QueryString["id"];
            //System.Diagnostics.Debugger.Launch();

            lblName.Text = strName;
        }
    }
}