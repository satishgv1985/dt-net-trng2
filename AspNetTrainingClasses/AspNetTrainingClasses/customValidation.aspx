<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customValidation.aspx.cs"
    Inherits="AspNetTrainingClasses.customValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function seatSelected(sender, args) {
            var tableId = document.getElementById('cblSelectSeats');
            args.IsValid = false;
            //debugger;
            for (var i = 0; i < tableId.childNodes[0].childNodes.length; i++) {
                if (tableId.childNodes[0].childNodes[i].childNodes[0].childNodes[0].checked) {
                    args.IsValid = true;
                    break;
                }
            }
            return args.IsValid;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label><br />
        Select Any seat:
        <asp:CheckBoxList ID="cblSelectSeats" runat="server">
        </asp:CheckBoxList>
        <asp:CustomValidator ID="cvSeats" runat="server" ClientValidationFunction="seatSelected"
            ErrorMessage="Please select atleast one seat" OnServerValidate="cvSeats_ServerValidate"></asp:CustomValidator>
        <br />
        <asp:Button ID="btnSeat" runat="server" Text="Submit" onclick="btnSeat_Click" />
    </div>
    </form>
    