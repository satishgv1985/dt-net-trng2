<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ObjectDS.aspx.cs" Inherits="AspNetTrainingClasses.dataControls.ObjectDS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                     <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                    SortExpression="Name" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="GetCustomers" TypeName="BusinessLogic.CustomerDAL">
            
        </asp:ObjectDataSource>
    </div>
    </form>
</body>
</html>
