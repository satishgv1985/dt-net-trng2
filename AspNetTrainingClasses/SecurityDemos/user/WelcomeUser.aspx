﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WelcomeUser.aspx.cs" Inherits="SecurityDemos.Welcome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   user content
    <br />
    <asp:Panel ID="pnlAll" runat="server">
    common content
    </asp:Panel>

    <asp:LinkButton ID="lbLogOut" runat="server" Text="LogOut" onclick="lbLogOut_Click"></asp:LinkButton>
    
    </div>
    </form>
</body>
</html>