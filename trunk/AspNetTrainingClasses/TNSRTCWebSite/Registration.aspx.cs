using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TNSRTC;
using System.Web.Security;
using System.Web.Mail;
using System.Net;
using System.Net.Mime;
using System.Threading;
using System.ComponentModel;

namespace TNSRTCWebSite
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            return;
            if (IsValid)
            {

                UserDetail ud = new UserDetail()
                {
                    Username = txtuName.Text,
                    Password = txt_Password.Text,

                    //SecurityQuestion = Convert.ToInt32(ddlSecurityquestion.SelectedValue),
                    //YourAnswer = txt_Answer.Text,
                    Firstname = txtfName.Text,
                    //Lastname = txt_Lastname.Text,
                    //Emailid = txtEmail.Text,
                    //Gender = Convert.ToBoolean(ddlGender.SelectedValue),
                    //Maritualstatus = Convert.ToBoolean(ddlStatus.SelectedValue),
                    ////DateofBirth = ddlDate.SelectedValue + "/" + ddlMonth.SelectedValue + "/" + ddlYear.SelectedValue,
                    //Occupation = ddlOccupation.SelectedValue,
                    //Mobile = txt_Mobile.Text,
                    //Nationality = ddlNationality.SelectedValue,
                    //Address = txtAddress.Text,
                    //
                };


             

                int retVal = UserDetailDAL.InsertUser(ud);
                if (retVal == 1)
                {
                    lblMessage.Visible = hlClickHere.Visible = true;
                    txtuName.Text = txt_Password.Text = txtfName.Text = "";
                }
                else
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = "Error! Try again";
                }
                MailMessage msg = new MailMessage();
                msg.To = txtEmail.Text;



            }
        }
    }
}