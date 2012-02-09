<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="csspage.aspx.cs" Inherits="AspNetTrainingClasses.Assignments.Naveen.UserControl.CSS.CSS" %>

<%@ Register Src="~/Assignments/Naveen/UserControl/CSS/W3Schools.ascx" TagPrefix="uc"
    TagName="w3schools" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc:w3schools ID="ucW3Schools" runat="server" />
    </div>
    </form>
</body>
</html>
