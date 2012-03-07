using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.AJAX
{
    public partial class WebServiceDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //net.webservicex.www.WeatherForecast wf = new net.webservicex.www.WeatherForecast();
            //net.webservicex.www.WeatherForecasts wfcs;
            //wfcs = wf.GetWeatherByZipCode("80302");
            //lblWeather.Text = wfcs.PlaceName;
            

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //Accessing services in the same project
            //calculator.CalculatorService cs = new calculator.CalculatorService();
            //lblAnswer.Text = cs.Calculation(Convert.ToInt32(txtNum1.Text), Convert.ToInt32(txtNum2.Text));
            
            //Accesing services in local machine
            MyCalc.CalculatorService calc = new MyCalc.CalculatorService();
            lblAnswer.Text = calc.Add(Convert.ToInt32(txtNum1.Text), Convert.ToInt32(txtNum2.Text));
            
        }
    }
}