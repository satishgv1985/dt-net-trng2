using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspNetTrainingClasses.Assignments.Srinivas
{
    public partial class ListViewSample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lvProducts_Sorting(object sender, ListViewSortEventArgs e)
        {

        }

        protected void lvProducts_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            if (e.CommandName == "Insert")
            {
                TextBox txtPname = (TextBox)e.Item.FindControl("txtPname");
                TextBox txtPrice = (TextBox)e.Item.FindControl("txtPrice");
                TextBox txtQty = (TextBox)e.Item.FindControl("txtQty");
                string insertCommand = "Insert into [Products] ([ProductName],[UnitPrice],[QuantityPerUnit]) Values('" + txtPname.Text + "', " + txtPrice.Text + ", " + txtQty.Text + ");";
                sdsProducts.InsertCommand = insertCommand;
            }
            else if (e.CommandName == "Update")
            {
                TextBox txtId = (TextBox)e.Item.FindControl("txtUpId");
                TextBox txtname = (TextBox)e.Item.FindControl("txtUpname");
                TextBox txtPrice = (TextBox)e.Item.FindControl("txtUpPrice");
                TextBox txtQty = (TextBox)e.Item.FindControl("txtUpQty");
                string updateCommand = "Update [Products] set [ProductName]='" + txtname.Text + "', [UnitPrice]=" + txtPrice.Text + ", [QuantityPerUnit]=" + txtQty.Text + " where Id=" + Convert.ToInt32(txtId.Text) + ";";
                sdsProducts.UpdateCommand = updateCommand;
            }
            else if (e.CommandName == "Delete")
            {
                TextBox txtId = (TextBox)e.Item.FindControl("txtUpId");
                string deleteCommand = "delete from [Products] where Id=" + Convert.ToInt32(txtId.Text);
                sdsProducts.DeleteCommand = deleteCommand;
            }
        }





    }
}