<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gvService.aspx.cs" Inherits="AspNetTrainingClasses.gvService" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="gvservicebus" EmptyDataText="Empty data">
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
        <asp:SqlDataSource ID="gvservicebus" runat="server" 
            ConnectionString="<%$ ConnectionStrings:TNSRTCConnectionString %>" 
            SelectCommand="SELECT [ServiceId], [ServiceNo], [FromPlaceID], [ToPlaceID] FROM [tblService]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
