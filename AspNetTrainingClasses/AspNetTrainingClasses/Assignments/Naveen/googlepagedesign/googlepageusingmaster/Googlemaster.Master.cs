using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.Assignments.Naveen.googlepagedesign.googlepageusingmaster
{
    public partial class Googlemaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //HtmlTableCell ht = (HtmlTableCell)this.Master.FindControl("tdSearch");
            //ht.Attributes.Add("class", "borderstyle");

            if(Request.PhysicalPath.Contains("search"))
                tdSearch.Attributes.Add("class", "borderstyle");
            else if(Request.PhysicalPath.Contains("image"))
                tdImages.Attributes.Add("class", "borderstyle");
        }
    }
}