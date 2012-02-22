using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["name"] = "asp.net";
                HttpCookie hc = new HttpCookie("dotnet training");
                //Request.Cookies.Add(hc);
                //Request.Cookies.Set(hc);
                //Request.Cookies.Add(hc);
                //Response.SetCookie(hc);
                Response.SetCookie(new HttpCookie("dotnet", "training"));
                //hc.Expires

                //Request.Cookies.
            }

            //Request.Cookies.Add(

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //txtName.Text = Convert.ToString(ViewState["name"]);
            //txtName.Text = ViewState["name"].ToString();

            lblCookieValue.Text = Request.Cookies["dotnet"].Value;
        }
    }
}