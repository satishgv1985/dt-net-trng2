using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using TNSRTC;
using System.Web.Security;
namespace TNSRTCWebSite
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                lblError.Visible = false;

            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            //SqlDataSource sdsLogin = new SqlDataSource();
            //sdsLogin.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;

            UserDetail ud = new UserDetail();
            ud.Username = txtUserName.Text;
            ud.Password = txtPassword.Text;

            //bool val = UserDetailDAL.ValidateUser(ud);
            //if (true)
            //{                  
            //    FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
            //}
            //else
            //{
            //    lblError.Visible = true;
            //}
            UserDetail loggedUser = UserDetailDAL.ValidateUser(ud);
            //System.Diagnostics.Debugger.Launch();
            if (loggedUser.Firstname!=null)
            {
                Session["userDetails"] = loggedUser;
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
            }
            else
            {
                lblError.Visible = true;
            }
         
        }
    }
}