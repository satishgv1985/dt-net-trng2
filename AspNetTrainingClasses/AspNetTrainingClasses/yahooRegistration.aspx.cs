using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class yahooRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                ListItem ltObj = new ListItem("-Select State-", "0");
                ddlState.Items.Add(ltObj);
                ltObj = new ListItem("Karnataka", "1");
                ddlState.Items.Add(ltObj);

                ddlState.Items.Add(new ListItem("Andhra Pradesh", "2"));

                ddlCity.Items.Add(new ListItem("-Select State First-", "0"));
            }
            
            //lblValue.Text = ddlState.se
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            ddlCity.Items.Clear();
            if(ddlState.SelectedValue == "0")
                ddlCity.Items.Add(new ListItem("-Select State First-", "0"));

            //txtOther.Visible = true;

            if (ddlState.SelectedValue == "1")
            {
                ddlCity.Items.Add(new ListItem("Bangalore", "1"));
                ddlCity.Items.Add(new ListItem("Mysore", "2"));
            }
            else
            if (ddlState.SelectedValue == "2")
            {
                ddlCity.Items.Add(new ListItem("Hyderbad", "1"));
                ddlCity.Items.Add(new ListItem("Secunderabad", "2"));
            }


        }
    }
}