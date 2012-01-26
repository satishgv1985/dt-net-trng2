<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yahooRegistration.aspx.cs"
    Inherits="AspNetTrainingClasses.yahooRegistration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="lblValue" runat="server"></asp:Label><br /><br />
        State:
        <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="true" 
            onselectedindexchanged="ddlState_SelectedIndexChanged">
        </asp:DropDownList>

        <asp:TextBox ID="txtOther" runat="server" Visible="false"></asp:TextBox>
        <br />
        City:<asp:DropDownList ID="ddlCity" runat="server">
        </asp:DropDownList>
    </div>
    </form>
</body>
</html>
