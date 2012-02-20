<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntityDataSourceDemo.aspx.cs" Inherits="AspNetTrainingClasses.dataControls.EntityDataSourceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=NorthwindEntities" 
            DefaultContainerName="NorthwindEntities" EnableFlattening="False" 
            EntitySetName="Products" 
            Select="it.[ProductID], it.[ProductName], it.[SupplierID], it.[CategoryID]">
        </asp:EntityDataSource>

        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
