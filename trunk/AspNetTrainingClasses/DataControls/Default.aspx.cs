using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Cells[5].HorizontalAlign = HorizontalAlign.Right;
            e.Row.Cells[6].HorizontalAlign = HorizontalAlign.Right;

        }
    }

    protected void chkSelectAll_CheckedChanged(object sender, EventArgs e)
    {
        
        CheckBox chkAll = (CheckBox)GridView1.HeaderRow.FindControl("chkSelectAll");
        if (chkAll.Checked == true)
        {
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                CheckBox chkSel = (CheckBox)gvr.FindControl("chkSelect");
                chkSel.Checked = true;
            }
        }
        else
        {
            foreach (GridViewRow gvr in GridView1.Rows)
            {
                CheckBox chkSlctd = (CheckBox)gvr.FindControl("chkSelect");
                chkSlctd.Checked = false;
            }
        }
    }
}
