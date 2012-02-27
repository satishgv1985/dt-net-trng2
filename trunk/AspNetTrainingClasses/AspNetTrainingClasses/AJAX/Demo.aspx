<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="AspNetTrainingClasses.AJAX.Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="smDemo" runat="server">
    </asp:ScriptManager>
    <div>
   Name Entered: <asp:Label ID="lblName" runat="server"></asp:Label><br />

    <asp:TextBox ID="txtName" runat="server" ></asp:TextBox><br />
    <br />
     Page load time: <asp:Label ID="lblTime" runat="server"></asp:Label><br />
        <asp:UpdatePanel ID="upPartial" runat="server">
        <ContentTemplate>
          Submit click time:  <asp:Label ID="lblNewTime" runat="server"></asp:Label><br />
   
        </ContentTemplate>
        <Triggers>
        <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="click" />
        </Triggers>

        </asp:UpdatePanel>

         <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Submit" />
  
 
    </div>
    </form>
</body>
</html>
