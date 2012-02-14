<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DataFormView.aspx.cs" Inherits="AspNetTrainingClasses.dataControls.FormView" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="fvProducts" runat="server" DataKeyNames="ProductID"  AllowPaging="True" DefaultMode="Insert"
            DataSourceID="sdsProducts" CellPadding="4" ForeColor="#333333">
            <EditItemTemplate>
                ProductID:
                <asp:Label ID="ProductIDLabel1" runat="server" 
                    Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                    Text='<%# Bind("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                UnitsInStock:
                <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                    Text='<%# Bind("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                    Text='<%# Bind("ReorderLevel") %>' />
                <br />
                Discontinued:
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                    Checked='<%# Bind("Discontinued") %>' />
                <br />
                Date_Modified:
                <asp:TextBox ID="Date_ModifiedTextBox" runat="server" 
                    Text='<%# Bind("Date_Modified") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                ProductName:
                <asp:TextBox ID="ProductNameTextBox" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                SupplierID:
                <asp:TextBox ID="SupplierIDTextBox" runat="server" 
                    Text='<%# Bind("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:TextBox ID="CategoryIDTextBox" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:TextBox ID="QuantityPerUnitTextBox" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                UnitPrice:
                <asp:TextBox ID="UnitPriceTextBox" runat="server" 
                    Text='<%# Bind("UnitPrice") %>' />
                <br />
                UnitsInStock:
                <asp:TextBox ID="UnitsInStockTextBox" runat="server" 
                    Text='<%# Bind("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:TextBox ID="UnitsOnOrderTextBox" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:TextBox ID="ReorderLevelTextBox" runat="server" 
                    Text='<%# Bind("ReorderLevel") %>' />
                <br />
                Discontinued:
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                    Checked='<%# Bind("Discontinued") %>' />
                <br />
                Date_Modified:
                <asp:TextBox ID="Date_ModifiedTextBox" runat="server" 
                    Text='<%# Bind("Date_Modified") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
           
                ProductID:
                <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                <br />
                ProductName:
                <asp:Label ID="ProductNameLabel" runat="server" 
                    Text='<%# Bind("ProductName") %>' />
                <br />
                SupplierID:
                <asp:Label ID="SupplierIDLabel" runat="server" 
                    Text='<%# Bind("SupplierID") %>' />
                <br />
                CategoryID:
                <asp:Label ID="CategoryIDLabel" runat="server" 
                    Text='<%# Bind("CategoryID") %>' />
                <br />
                QuantityPerUnit:
                <asp:Label ID="QuantityPerUnitLabel" runat="server" 
                    Text='<%# Bind("QuantityPerUnit") %>' />
                <br />
                UnitPrice:
                <asp:Label ID="UnitPriceLabel" runat="server" Text='<%# Bind("UnitPrice") %>' />
                <br />
                UnitsInStock:
                <asp:Label ID="UnitsInStockLabel" runat="server" 
                    Text='<%# Bind("UnitsInStock") %>' />
                <br />
                UnitsOnOrder:
                <asp:Label ID="UnitsOnOrderLabel" runat="server" 
                    Text='<%# Bind("UnitsOnOrder") %>' />
                <br />
                ReorderLevel:
                <asp:Label ID="ReorderLevelLabel" runat="server" 
                    Text='<%# Bind("ReorderLevel") %>' />
                <br />
                Discontinued:
                <asp:CheckBox ID="DiscontinuedCheckBox" runat="server" 
                    Checked='<%# Bind("Discontinued") %>' Enabled="false" />
                <br />
                Date_Modified:
                <asp:Label ID="Date_ModifiedLabel" runat="server" 
                    Text='<%# Bind("Date_Modified") %>' />
                <br />

            </ItemTemplate>
      
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
      
        </asp:FormView>
        <asp:SqlDataSource ID="sdsProducts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued], [Date_Modified] FROM [Products]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
