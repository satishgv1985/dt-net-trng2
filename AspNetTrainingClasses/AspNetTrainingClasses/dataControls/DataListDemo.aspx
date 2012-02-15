<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataListDemo.aspx.cs" Inherits="AspNetTrainingClasses.dataControls.DataListDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="Datalist1" runat="server" BackColor="White" BorderColor="White"
            BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyField="ProductID"
            DataSourceID="SqlDataSource1">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
            <ItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                <br />
                QuantityPerUnit:
                <asp:Label ID="QuantityPerUnitLabel" runat="server" Text='<%# Eval("QuantityPerUnit") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [UnitPrice] FROM [Products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
