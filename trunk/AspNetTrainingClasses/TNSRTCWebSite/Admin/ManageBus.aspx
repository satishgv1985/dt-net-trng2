<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageBus.aspx.cs" Inherits="TNSRTCWebSite.Admin.ManageBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="gvbusService" runat="server" DataSourceID="SqlDataSource1" >
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNSRTCConnectionString %>" 
        SelectCommand="SELECT [busserviceNo], [fromplaceID], [toplaceID], [busType], [busId] FROM [tblbusService]"></asp:SqlDataSource>
</asp:Content>
