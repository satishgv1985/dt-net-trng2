<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetCustomerDetails.aspx.cs" Inherits="AspNetTrainingClasses.wcf.GetCustomerDetails" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   Enter CustomerId: <asp:TextBox ID="txtCustomerId"
            runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <br />
        Name:<asp:Label ID="lblName" runat="server"></asp:Label><br />
        DOB: <asp:Label ID="lblDOB" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
