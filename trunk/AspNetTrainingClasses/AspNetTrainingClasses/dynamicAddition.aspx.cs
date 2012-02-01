using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses
{
    public partial class dynamicAddition : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox txtDynamic1, txtDynamic2;

            //for (int i = 0; i < 4; i++)
            //{


            //}

            Table tbDynamic = new Table();
            tbDynamic.BorderWidth = 3;
            TableRow tr;
            TableCell tc1, tc2;
            int numberOfTimes = 4;

            RequiredFieldValidator r = new RequiredFieldValidator();
            r.ControlToValidate = "";

            for (int i = 0; i < numberOfTimes / 2; i++)
            {
                tr = new TableRow();
                tc1 = new TableCell();
                tc2 = new TableCell();

                txtDynamic1 = new TextBox();
                txtDynamic1.ID = "txtDynamic1" + i;
                txtDynamic1.Text = "Dynamic Populated";

                txtDynamic2 = new TextBox();
                txtDynamic2.ID = "txtDynamic2" + i;
                txtDynamic2.Text = "Dynamic Populated";



                tc1.Controls.Add(txtDynamic1);
                tc2.Controls.Add(txtDynamic2);

                tr.Cells.Add(tc1);
                tr.Cells.Add(tc2);
                tbDynamic.Rows.Add(tr);
            }

            pnlDynamic.Controls.Add(tbDynamic);



            var rbSex = new RadioButton();
            rbSex.ID = "rbSex";
            rbSex.Text = "Maleeeeeee";
            rbSex.GroupName = "Sex";
            pnlDynamic.Controls.Add(rbSex);

            dynamic cbLanguage;

            cbLanguage = new CheckBox();
            cbLanguage.ID = "cbLanguage";
            cbLanguage.Text = "Hindi";

            pnlDynamic.Controls.Add(cbLanguage);


            int i11 = 2;
            decimal dd = 2;
            float ff = 2;

            Add(i11, dd);

        }

        void Add(int a, decimal b, float c=8)
        {

        }
    }
}