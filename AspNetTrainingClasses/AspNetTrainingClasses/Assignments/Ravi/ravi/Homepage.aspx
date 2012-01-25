<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/facebook.gif" 
        style="z-index: 1; left: 327px; top: 97px; position: absolute; height: 49px; width: 201px" />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
        style="z-index: 1; left: 129px; top: 105px; position: absolute" 
        Text="Welcome to "></asp:Label>
    </form>
</body>
</html>
