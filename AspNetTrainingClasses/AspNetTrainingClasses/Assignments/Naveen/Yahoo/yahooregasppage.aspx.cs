using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.Assignments.Naveen.Yahoo
{
    public partial class yahooregasppage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCountry.Items.Add(new ListItem("-Select Country-", "0"));
                ddlCountry.Items.Add(new ListItem("India","1"));
                ddlCountry.Items.Add(new ListItem("Australia","2"));
                ddlCountry.Items.Add(new ListItem("England","3"));
                ddlCountry.Items.Add(new ListItem("South Africa","4"));
                ddlCountry.Items.Add(new ListItem("Bangladesh","5"));
                ddlLanguage.Items.Add(new ListItem("-Select Language-","0"));
                ddlLanguage.Items.Add(new ListItem("తెలుగు","1"));
                ddlLanguage.Items.Add(new ListItem("English", "2"));
                ddlLanguage.Items.Add(new ListItem("ಕನ್ನಡ", "3"));
                ddlLanguage.Items.Add(new ListItem("हिन्दी", "4"));
                ddlLanguage.Items.Add(new ListItem("मराठी", "5"));
            }
        }
    }
}