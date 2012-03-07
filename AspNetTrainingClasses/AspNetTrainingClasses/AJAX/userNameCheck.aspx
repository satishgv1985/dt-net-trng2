<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userNameCheck.aspx.cs"
    Inherits="AspNetTrainingClasses.AJAX.userNameCheck" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .available
    {
        background-image:url('available.gif');
        background-repeat:no-repeat;
        padding-left:20px;
    }
    .taken
    {
        background-image:url('taken.gif');
        background-repeat:no-repeat;
        padding-left:20px;
    }
    .progress
    {
        background-image:url('spinner.gif');
        background-repeat:no-repeat;
        padding-left:20px;
    }
    
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <asp:UpdatePanel ID="upUserNameCheck" runat="server">
            <ContentTemplate>
                EnterUserName:
                <asp:TextBox ID="txtUserName" runat="server" OnTextChanged="txtUserName_TextChanged"
                    AutoPostBack="true"></asp:TextBox>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="txtUserName" EventName="TextChanged" />
            </Triggers>
        </asp:UpdatePanel>

          <script language="javascript" type="text/javascript">
              // Hook the InitializeRequest event.
              Sys.WebForms.PageRequestManager.getInstance().add_initializeRequest(InitializeRequest);

              function InitializeRequest(sender, args) {
                  // Change div's CSS class and text content.
                  $get('lblMessage').className = 'progress';
                  $get('lblMessage').innerHTML = 'Checking availability...';

              }
        </script>
        <br />
        Pass:
        <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </div>
    </form>
</body>
</html>
