using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.Assignments.Naveen
{
    public partial class GRIDVIEWtoWEBSERVICE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gridviewfromwebservice.gvwebservice gv = new gridviewfromwebservice.gvwebservice();
            Gridview1.DataSource = gv.getProducts();
            Gridview1.DataBind();

        }
    }
}