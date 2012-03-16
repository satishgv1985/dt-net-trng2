using System;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using TNSRTC;

namespace TNSRTCTest
{
    [TestClass]
    public class Registration
    {
        [TestMethod]
        public void ValidateRegistration()
        {
            UserDetail ud = new UserDetail();
            ud.Username = "satish";
           int i= UserDetailDAL.InsertUser(ud);
        }
    }
}
