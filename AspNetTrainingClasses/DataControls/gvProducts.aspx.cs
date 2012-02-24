using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class gvProducts : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //GridView1.Rows[e.NewEditIndex].Cells[4].Text
        int colNo = 0;
        for (int i = 0; i < GridView1.Columns.Count; i++)
        {
            if (GridView1.Columns[i].HeaderText == "SupplierID")
            {
                colNo = i;
                break;
            }
        }

        string SuppID = GridView1.Rows[e.NewEditIndex].Cells[colNo + 1].Text;

        ViewState["editIndex"] = e.NewEditIndex;
        ViewState["supplierID"] = SuppID;



    }

    protected void GridView1_DataBound(object sender, EventArgs e)
    {

        if (ViewState["editIndex"] != null)
        {
            GridViewRow gvr = GridView1.Rows[Convert.ToInt32(ViewState["editIndex"])];

            DropDownList ddlCompany = (DropDownList)gvr.FindControl("ddlCompany");
            ddlCompany.SelectedValue = ViewState["supplierID"].ToString();


        }

        foreach (GridViewRow gvr in GridView1.Rows)
        {
            if (ViewState["selectedValue"] != null)
            {
                string keyValue = GridView1.DataKeys[gvr.RowIndex].Value.ToString();
                if (keyValue == ViewState["selectedValue"].ToString())
                {
                    sdsOrders.SelectCommand = "SELECT [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount] FROM [Order Details] WHERE [ProductID]="+keyValue;
                    sdsOrders.Select(DataSourceSelectArguments.Empty);
                   // gvOrders.DataSourceID = string.Empty;
                    gvOrders.DataSource = sdsOrders;
                    
                    gvOrders.DataBind();
                    gvOrders.Visible = true;
                    GridView1.SelectedIndex = gvr.RowIndex;
                    return;
                }
            }
        }

    }

    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (DataBinder.Eval(e.Row.DataItem, "UnitPrice") != null)
            {
                decimal up = (decimal)DataBinder.Eval(e.Row.DataItem, "UnitPrice");
                if (Convert.ToDecimal(up) > 200)
                {
                    e.Row.BackColor = System.Drawing.Color.AliceBlue;

                }
            }
        }
    }
    protected void GridView1_PageIndexChanged(object sender, EventArgs e)
    {
        GridView1.SelectedIndex = -1;
        gvOrders.Visible = false;

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        ViewState["selectedValue"] = GridView1.SelectedValue;

        sdsOrders.SelectCommand = "SELECT [OrderID], [ProductID], [UnitPrice], [Quantity], [Discount] FROM [Order Details] WHERE [ProductID]=" + GridView1.SelectedValue.ToString();
        sdsOrders.Select(DataSourceSelectArguments.Empty);
        // gvOrders.DataSourceID = string.Empty;
        gvOrders.DataSource = sdsOrders;

        gvOrders.DataBind();
        gvOrders.Visible = true;
    }
}