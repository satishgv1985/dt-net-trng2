using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

namespace AspNetTrainingClasses.AJAX
{

    public partial class CompletionCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethodAttribute(), System.Web.Script.Services.ScriptMethodAttribute()]
        public static string[] GetProductsFromBack(string prefixText, int count)
        {
            string[] st = { "pname1", "pname2" };
            return st;


        }
    }
}