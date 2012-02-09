<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="AspNetTrainingClasses.login.Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    Application count:<asp:Label ID="lblAppvalue" runat="server"></asp:Label><br />

    Hi <asp:Label ID="lblUser" runat="server"></asp:Label>... Welcome.

    <br />
    <br />
    <asp:LinkButton ID="lbLogOut" runat="server" Text="Log Out" 
            onclick="lbLogOut_Click"></asp:LinkButton>
    </div>
    </form>
</body>
</html>
