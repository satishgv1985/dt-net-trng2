using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;

namespace AspNetTrainingClasses.AJAX
{
    public partial class AsyncCallBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [System.Web.Services.WebMethod]
        [ScriptMethod]
        public static string[] GetValues(int id, string name)
        {
            //Exception e=new Exception();
            //throw e;
            string[] st = { "pname1", "pname2" };
            return st;
        }
    }
}