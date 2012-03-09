using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.Assignments.Naveen.Web_Services
{
    public partial class gvfromwebservice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gridviewfromwebservice.gvwebservice gvws = new gridviewfromwebservice.gvwebservice();
            gvwebservices.DataSource=gvws.getProducts();
            gvwebservices.DataBind();
        }
    }
}