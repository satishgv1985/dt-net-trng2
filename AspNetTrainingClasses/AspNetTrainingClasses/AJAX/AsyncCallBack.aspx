<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AsyncCallBack.aspx.cs"
    Inherits="AspNetTrainingClasses.AJAX.AsyncCallBack" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function readValues() {
            PageMethods.GetValues($get('txtId').value, $get('txtDetails').value, completedRead,errorOccured);
        }

        function completedRead(retVal) {
            debugger;
        }
        function errorOccured(sender, args) {
            alert('error');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        Enter id:<asp:TextBox ID="txtId" runat="server"></asp:TextBox><br />
        Enter a value:<asp:TextBox ID="txtDetails" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClientClick="javascript:readValues()" />

    </div>
    </form>
</body>
</html>
