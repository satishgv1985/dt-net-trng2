<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataGrid.aspx.cs" Inherits="DataGrid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID,SupplierID,CategoryID"
            DataSourceID="sdsProducts" AllowSorting="true">
           
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False"
                    ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" InsertVisible="False"
                    ReadOnly="True" SortExpression="SupplierID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" InsertVisible="False"
                    ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CompanyName" HeaderText="Company Name" SortExpression="CompanyName" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="UnitsInStock" HeaderText="UnitsInStock" SortExpression="UnitsInStock" />
                <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder" />
                <asp:BoundField DataField="ReorderLevel" HeaderText="ReorderLevel" SortExpression="ReorderLevel" />
                <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued" />
                <asp:BoundField DataField="Date_Modified" HeaderText="Date_Modified" SortExpression="Date_Modified" />
                <asp:ButtonField DataTextField="ProductID" HeaderText="Click  to Edit" ButtonType="Button" />
                <asp:HyperLinkField DataTextField="CompanyName" HeaderText="Company Name" DataNavigateUrlFields="SupplierID,ProductID"
                    DataNavigateUrlFormatString="~/CompanyNames.aspx?id={0}&pid={1}" />
                <asp:TemplateField>
                    <HeaderTemplate>
                        <i style="color: Gray">Discontinued</i>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblDisc" runat="server" Text='<%#Eval("Discontinued")  %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT     dbo.Products.ProductID, dbo.Products.ProductName, dbo.Suppliers.CompanyName, dbo.Categories.CategoryName, dbo.Products.QuantityPerUnit, 
                      dbo.Products.UnitPrice, dbo.Products.UnitsInStock, dbo.Products.UnitsOnOrder, dbo.Products.ReorderLevel, dbo.Products.Discontinued, dbo.Products.Date_Modified, 
                      dbo.Suppliers.SupplierID, dbo.Categories.CategoryID
FROM         dbo.Products INNER JOIN
                      dbo.Suppliers ON dbo.Products.SupplierID = dbo.Suppliers.SupplierID INNER JOIN
                      dbo.Categories ON dbo.Products.CategoryID = dbo.Categories.CategoryID">
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CategoryID"
            DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="CategoryID" HeaderText="Category ID" InsertVisible="False"
                    ReadOnly="True" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
