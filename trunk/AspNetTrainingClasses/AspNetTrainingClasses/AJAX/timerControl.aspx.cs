using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.AJAX
{
    public partial class timerControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void timerImageDemo_Tick(object sender, EventArgs e)
        {
            Random rm = new Random();
            int no = rm.Next(1, 4);
            imgDemo.ImageUrl = "images/image" + no + ".jpg";

        }
    }
}