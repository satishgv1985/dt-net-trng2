<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListViewSample.aspx.cs"
    Inherits="AspNetTrainingClasses.Assignments.Srinivas.ListViewSample" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="lvProducts" runat="server" DataSourceID="sdsProducts" OnSorting="lvProducts_Sorting"
            InsertItemPosition="LastItem" OnItemCommand="lvProducts_ItemCommand">
            <LayoutTemplate>
                <table border="0" cellpadding="1">
                    <tr style="background-color: #E5E5FE">
                        <th align="left">
                            <asp:LinkButton ID="lnkId" runat="server" CommandName="Sort" CommandArgument="ProductID">Product Id</asp:LinkButton>
                        </th>
                        <th align="left">
                            <asp:LinkButton ID="lnkName" runat="server" CommandName="Sort" CommandArgument="ProductName">Name</asp:LinkButton>
                        </th>
                        <th align="left">
                            <asp:LinkButton ID="lnkUnitPrice" runat="server" CommandName="Sort" CommandArgument="UnitPrice">Price</asp:LinkButton>
                        </th>
                        <th align="left">
                            <asp:LinkButton ID="lnkQty" runat="server" CommandName="Sort" CommandArgument="QuantityPerUnit">Qty</asp:LinkButton>
                        </th>
                        <th>
                        </th>
                    </tr>
                    <tr id="itemPlaceholder" runat="server">
                    </tr>
                </table>
                <asp:DataPager ID="ItemDataPager" runat="server" PageSize="5">
                    <Fields>
                        <asp:NumericPagerField ButtonCount="2" />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label runat="server" ID="lblId"><%#Eval("ProductID") %></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblName"><%#Eval("ProductName")%></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblUnitPrice"><%#Eval("UnitPrice") %></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblQty"><%#Eval("QuantityPerUnit")%></asp:Label>
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color: #EFEFEF">
                    <td>
                        <asp:Label runat="server" ID="lblId"><%#Eval("ProductID") %></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblName"><%#Eval("ProductName")%></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblUnitPrice"><%#Eval("UnitPrice") %></asp:Label>
                    </td>
                    <td>
                        <asp:Label runat="server" ID="lblQty"><%#Eval("QuantityPerUnit")%>></asp:Label>
                    </td>
                    <td>
                        <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <InsertItemTemplate>
                <tr id="Tr1" runat="server">
                    <td>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPname" runat="server" Text='<%#Eval("ProductName") %>' Width="100px">Name</asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Text='<%#Eval("UnitPrice") %>' Width="100px">Unit Price</asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtQty" runat="server" Text='<%#Eval("QuantityPerUnit") %>' Width="100px">Qty</asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    </td>
                </tr>
            </InsertItemTemplate>
            <EditItemTemplate>
                <td>
                    <asp:TextBox ID="txtUpId" runat="server" Text='<%#Eval("ProductId") %>' Enabled="false"
                        Width="20px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtUpname" runat="server" Text='<%#Eval("ProductName") %>' Width="100px"></asp:TextBox>
                    <asp:TextBox ID="txtUpPrice" runat="server" Text='<%#Eval("UnitPrice") %>' Width="100px"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="txtUpQty" runat="server" Width="100px" Text='<%#Eval("QuantityPerUnit") %>'></asp:TextBox>
                </td>
                <td>
                    <asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update">Update</asp:LinkButton>
                    <asp:LinkButton ID="lnkDelete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </td>
                </tr>
            </EditItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString2 %>"
            SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [CategoryName] FROM [Alphabetical list of products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
