<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageBus.aspx.cs" Inherits="TNSRTCWebSite.Admin.ManageBus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:GridView ID="gvbusService" runat="server" DataSourceID="busService" 
        AutoGenerateColumns="False" >
    <Columns>
        <asp:BoundField DataField="ServiceId" HeaderText="ServiceId" 
            InsertVisible="False" ReadOnly="True" SortExpression="ServiceId" />
        <asp:BoundField DataField="ServiceNo" HeaderText="ServiceNo" 
            SortExpression="ServiceNo" />
        <asp:BoundField DataField="FromPlaceID" HeaderText="FromPlaceID" 
            SortExpression="FromPlaceID" />
        <asp:BoundField DataField="ToPlaceID" HeaderText="ToPlaceID" 
            SortExpression="ToPlaceID" />
    </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="busService" runat="server" 
        ConnectionString="<%$ ConnectionStrings:TNSRTCConnectionString %>" 
        SelectCommand="SELECT [ServiceId], [ServiceNo], [FromPlaceID], [ToPlaceID] FROM [tblService]">
    </asp:SqlDataSource>
</asp:Content>
