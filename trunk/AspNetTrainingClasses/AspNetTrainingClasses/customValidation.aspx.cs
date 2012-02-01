using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class customValidation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //System.Diagnostics.Debugger.Launch();
                //do a database check and get the available seats
                ListItem ltSeat = new ListItem("B1", "200");
                cblSelectSeats.Items.Add(ltSeat);
                ltSeat = new ListItem("B2", "201");
                cblSelectSeats.Items.Add(ltSeat);
                ltSeat = new ListItem("B3", "202");
                cblSelectSeats.Items.Add(ltSeat);


            }


        }

        protected void cvSeats_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //System.Diagnostics.Debugger.Launch();


            args.IsValid = false;
            foreach (ListItem lt in cblSelectSeats.Items)
            {
                if (lt.Selected)
                {
                    args.IsValid = true;
                    break;
                }
            }



        }

        protected void btnSeat_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // do a database check and get the seat confirmation
                lblMessage.Text = "Seat not confirmed because of some problem. Please try again";

                cvSeats.ErrorMessage = "Please select different seat";
                //rebuild the cblseats

            }
        }
    }
}