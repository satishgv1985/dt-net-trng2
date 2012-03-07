using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.Assignments.Naveen.Web_Services
{
    public partial class GetCities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            weatherwebservicedemo.GlobalWeather ws = new weatherwebservicedemo.GlobalWeather();
            txtgetCities.Text=ws.GetCitiesByCountry(txtCountry.Text);
        }
    }
}