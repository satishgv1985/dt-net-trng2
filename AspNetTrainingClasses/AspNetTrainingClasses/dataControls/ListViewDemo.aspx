<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewDemo.aspx.cs" Inherits="AspNetTrainingClasses.dataControls.ListViewDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ProductID" 
            DataSourceID="ListViewSqlDataSorce">
        <AlternatingItemTemplate>
            <tr style="background-color:#FFF8DC;">
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductNameLabel" runat="server" 
                        Text='<%# Eval("ProductName") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                        Text='<%# Eval("QuantityPerUnit") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsInStockLabel" runat="server" 
                        Text='<%# Eval("UnitsInStock") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                        Text='<%# Eval("UnitsOnOrder") %>' />
                </td>
                <td>
                    <asp:Label ID="ReorderLevelLabel" runat="server" 
                        Text='<%# Eval("ReorderLevel") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color:#008A8C;color: #FFFFFF;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="ProductIDLabel1" runat="server" 
                        Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ProductNameTextBox" runat="server" 
                        Text='<%# Bind("ProductName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                        Text='<%# Bind("QuantityPerUnit") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                        Text='<%# Bind("UnitPrice") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                        Text='<%# Bind("UnitsInStock") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                        Text='<%# Bind("UnitsOnOrder") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                        Text='<%# Bind("ReorderLevel") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="ProductIDTextBox" runat="server" 
                        Text='<%# Bind("ProductID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ProductNameTextBox" runat="server" 
                        Text='<%# Bind("ProductName") %>' />
                </td>
                <td>
                    <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                        Text='<%# Bind("QuantityPerUnit") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                        Text='<%# Bind("UnitPrice") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                        Text='<%# Bind("UnitsInStock") %>' />
                </td>
                <td>
                    <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                        Text='<%# Bind("UnitsOnOrder") %>' />
                </td>
                <td>
                    <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                        Text='<%# Bind("ReorderLevel") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color:#DCDCDC;color: #000000;">
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductNameLabel" runat="server" 
                        Text='<%# Eval("ProductName") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                        Text='<%# Eval("QuantityPerUnit") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsInStockLabel" runat="server" 
                        Text='<%# Eval("UnitsInStock") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                        Text='<%# Eval("UnitsOnOrder") %>' />
                </td>
                <td>
                    <asp:Label ID="ReorderLevelLabel" runat="server" 
                        Text='<%# Eval("ReorderLevel") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                <th runat="server">
                                    ProductID</th>
                                <th runat="server">
                                    ProductName</th>
                                <th runat="server">
                                    QuantityPerUnit</th>
                                <th runat="server">
                                    UnitPrice</th>
                                <th runat="server">
                                    UnitsInStock</th>
                                <th runat="server">
                                    UnitsOnOrder</th>
                                <th runat="server">
                                    ReorderLevel</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                <td>
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                </td>
                <td>
                    <asp:Label ID="ProductNameLabel" runat="server" 
                        Text='<%# Eval("ProductName") %>' />
                </td>
                <td>
                    <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                        Text='<%# Eval("QuantityPerUnit") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Eval("UnitPrice") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsInStockLabel" runat="server" 
                        Text='<%# Eval("UnitsInStock") %>' />
                </td>
                <td>
                    <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                        Text='<%# Eval("UnitsOnOrder") %>' />
                </td>
                <td>
                    <asp:Label ID="ReorderLevelLabel" runat="server" 
                        Text='<%# Eval("ReorderLevel") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
        <asp:SqlDataSource ID="ListViewSqlDataSorce" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [ProductID], [ProductName], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel] FROM [Alphabetical list of products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
