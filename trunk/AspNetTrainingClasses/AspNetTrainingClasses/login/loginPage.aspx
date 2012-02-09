<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="AspNetTrainingClasses.login.loginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       Count: <asp:Label ID="lblVisits" runat="server"></asp:Label>
       <br />
        User Name:
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <br />
        Password:
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:aspnetdbConnectionString %>" 
            SelectCommand="SELECT * FROM [vw_aspnet_Applications]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
