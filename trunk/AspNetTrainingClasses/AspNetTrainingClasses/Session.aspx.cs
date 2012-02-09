using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class Session : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["name"] = "Asp.Net training";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            txtName.Text = Convert.ToString(Session["name"]);
           

           
        }
    }
}