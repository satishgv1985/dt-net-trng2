using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace TNSRTCWebSite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            SqlDataSource sdsLogin = new SqlDataSource();
            sdsLogin.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;
            //sdsLogin.sel
        }
    }
}