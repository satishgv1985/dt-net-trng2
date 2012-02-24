using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.Assignments.Naveen.TNSRTC
{
    public partial class Regestration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                RegestrationDetail rd = new RegestrationDetail();
                rd.Username = txtuName.Text;
                rd.Password = txt_Password.Text;
                rd.ConfirmPassword = txtCpassword.Text;
                rd.SecurityQuestion = ddlSecurityquestion.SelectedValue;
                rd.YourAnswer = txt_Answer.Text;
                rd.Firstname = txtfName.Text;
                rd.Lastname = txt_Lastname.Text;
                rd.Emailid = txtEmail.Text;
                rd.Gender = ddlGender.SelectedValue;
                rd.Maritualstatus = ddlStatus.SelectedValue;
                rd.DateofBirth = ddlDate.SelectedValue + "/" + ddlMonth.SelectedValue + "/" + ddlYear.SelectedValue;
                rd.Occupation = ddlOccupation.SelectedValue;
                rd.Mobile = txt_Mobile.Text;
                rd.Nationality = ddlNationality.SelectedValue;
                rd.Address = txtAddress.Text;
                
            }
        }

     
    }
}