<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateProgessDemo.aspx.cs"
    Inherits="AspNetTrainingClasses.AJAX.updateProgess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .bodyBack
    {
        background-color:red;
    }
    </style>
</head>
<body id="bodyTag">
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="upLogin" runat="server">
            <ContentTemplate>
                EnterUserName:
                <asp:TextBox ID="txtUserName" runat="server" AutoPostBack="true"></asp:TextBox>
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                <br />
                Password:
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit"
            onclick="btnSubmit_Click" />
        <asp:UpdateProgress ID="upLoginProgress" runat="server" AssociatedUpdatePanelID="upLogin" DisplayAfter="1000">
            <ProgressTemplate>
                <div style="width: 300px; height: 100px; background-color: gray; text-align:center; position:absolute; left:307px; top:229px; ">
                    <h3>
                        Processing your request... Please wait</h3>
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

          <script language="javascript" type="text/javascript">
              // Hook the InitializeRequest event.
              Sys.WebForms.PageRequestManager.getInstance().add_initializeRequest(InitializeRequest);

              function InitializeRequest(sender, args) {
                  // Change div's CSS class and text content.
                  //debugger;
                  args._postBackElement.disabled = true;
                  $get('bodyTag').style.backgroundColor = 'lightgray';
                  $get('upLoginProgress').style.display = 'block';
                  
              }
        </script>


    </div>
    </form>
</body>
</html>
