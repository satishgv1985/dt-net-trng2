<%@ Page Title="" Language="C#" MasterPageFile="~/TNSRTCsite.Master" AutoEventWireup="true"
    CodeBehind="LoginPage.aspx.cs" Inherits="TNSRTCWebSite.LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>
        Login Here</h2>
        <asp:Label ID="lblError" runat="server" ForeColor="Red" Text="Invalid Login. Please try again." Visible="false"></asp:Label>
  <br />
  <br />  UserName:
    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><br />
    Password:
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />

        <br />
        <br />
        <asp:HyperLink ID="hlRegistration" runat="server" NavigateUrl="~/Registration.aspx" Text="Register Here"></asp:HyperLink>
   <%-- <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNSRTCConnectionString %>" 
        SelectCommand="SELECT [userId], [userName], [password], [firstName], [lastName] FROM [tblUser] WHERE (([userName] = @userName) AND ([password] = @password) )">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtPassword" Name="password" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtUserName" Name="userName" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>
</asp:Content>
