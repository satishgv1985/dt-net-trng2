<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebServiceDemo.aspx.cs" Inherits="AspNetTrainingClasses.AJAX.WebServiceDemo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
  Weather.  <asp:Label ID="lblWeather" runat="server"></asp:Label><br />
    <br />
    Number1: <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
    <br />
    Number2: <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" />
    
    <br />
    Answer: <asp:Label ID="lblAnswer" runat="server"></asp:Label>

    </div>
    </form>
</body>
</html>
