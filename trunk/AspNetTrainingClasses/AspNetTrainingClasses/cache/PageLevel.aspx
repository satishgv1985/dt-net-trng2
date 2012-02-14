<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageLevel.aspx.cs" Inherits="AspNetTrainingClasses.cache.PageLevel" %>
<%@ OutputCache VaryByParam="*" Duration="20"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    This is a page level caching served from memory.
    </div>
    </form>
</body>
</html>
