using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using TNSRTC;


namespace TNSRTCWebServices
{
    /// <summary>
    /// Summary description for LoginService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class LoginService : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public bool IsValidUser(string un, string pass)
        {
            UserDetail udTemp = new UserDetail();
            udTemp.Username = un;
            udTemp.Password = pass;

            UserDetail loggedUser = UserDetailDAL.ValidateUser(udTemp);

            if (loggedUser.Firstname != null)
            {

                return true;
            }
            else
            {
                return false;

            }
        }
    }
}
