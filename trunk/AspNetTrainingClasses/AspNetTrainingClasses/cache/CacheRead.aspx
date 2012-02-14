<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CacheRead.aspx.cs" Inherits="AspNetTrainingClasses.cache.CacheRead" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblName" runat="server"></asp:Label>
        <br />
        Click here to remove the cache Object: 
        <asp:Button ID="btnRemoveCache" runat="server" Text="Remove Cache" 
            onclick="btnRemoveCache_Click" />
    </div>
    </form>
</body>
</html>
