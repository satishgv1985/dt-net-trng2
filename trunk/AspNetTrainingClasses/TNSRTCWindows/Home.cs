using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using TNSRTC;
namespace TNSRTCWindows
{
    public partial class Home : Form
    {
        public Home()
        {
            InitializeComponent();         

        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
          
            UserDetail ud = new UserDetail();
            ud.Username = txtUserName.Text;
            ud.Password = txtPassword.Text;

          
            UserDetail loggedUser = UserDetailDAL.ValidateUser(ud);

            if (loggedUser.Firstname != null)
            {

                lblError.Visible = false;
                MessageBox.Show("login success");
            }
            else
            {
                lblError.Visible = true;                
            }
        }
    }
}
