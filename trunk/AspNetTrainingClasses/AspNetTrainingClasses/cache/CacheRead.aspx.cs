using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.cache
{
    public partial class CacheRead : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblName.Text = Convert.ToString(Cache["name"]);
        }

        protected void btnRemoveCache_Click(object sender, EventArgs e)
        {
            Cache.Remove("key");
            lblName.Text = Convert.ToString(Cache["name"]);
        }
    }
}