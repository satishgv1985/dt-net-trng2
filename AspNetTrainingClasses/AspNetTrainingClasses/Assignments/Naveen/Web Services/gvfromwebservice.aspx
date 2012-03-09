<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gvfromwebservice.aspx.cs"
    Inherits="AspNetTrainingClasses.Assignments.Naveen.Web_Services.gvfromwebservice" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvwebservices" runat="server" ForeColor="DodgerBlue" BackColor="AliceBlue"
            Font-Bold="false" Font-Italic="true" BorderColor="CornflowerBlue" Font-Names="Comic Sans MS">
            <HeaderStyle ForeColor="Snow" BackColor="DodgerBlue" Font-Bold="true" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Font-Bold="true" ForeColor="SaddleBrown"
            Text="Consume Web Service and Populate GridView" OnClick="Button1_Click" Height="45" />
    </div>
    </form>
</body>
</html>
