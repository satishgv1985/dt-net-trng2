using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class ASPxAction : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormSubmitted.aspx?name="+txtUserName.Text);
            //Server.Transfer("FormSubmitted.aspx?name=" + txtUserName.Text);
        }
    }
}