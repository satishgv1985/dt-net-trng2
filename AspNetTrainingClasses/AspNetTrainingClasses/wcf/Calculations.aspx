<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculations.aspx.cs" Inherits="AspNetTrainingClasses.wcf.Calculations" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Addition:
        <asp:TextBox ID="txtFirstNo" runat="server"></asp:TextBox>
        +
        <asp:TextBox ID="txtSecondNo" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
        <br /><br />
        Addition:<asp:Label ID="lblAnswer" runat="server"></asp:Label><br /><br />
        Subtraction:<asp:Label ID="lblSub" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
