<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Datarepeater.aspx.cs" Inherits="AspNetTrainingClasses.dataControls.repeater" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <table>
            </HeaderTemplate>
            <SeparatorTemplate>
            </SeparatorTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color: Lime">
                    <td>
                        <%# Eval("ProductID") %>
                    </td>
                    <td>
                        <%#Eval("ProductName") %>
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <%# Eval("ProductID") %>
                    </td>
                    <td>
                        <%#Eval("ProductName") %>
                    </td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Date_Modified] FROM [Products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
