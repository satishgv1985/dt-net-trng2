<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="aspValidation.aspx.cs"
    MaintainScrollPositionOnPostback="true" Inherits="AspNetTrainingClasses.aspValidation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary ID="vsAllErrors" runat="server" DisplayMode="List" ShowMessageBox="true"
            ShowSummary="false" />
        <br />
        Name:
        <asp:TextBox ID="txtName" runat="server" Text="First Name"></asp:TextBox>
        <asp:Button ID="btnCheck" runat="server" Text="Check" ValidationGroup="TestUserName" />
        <asp:RequiredFieldValidator ID="rfvName" InitialValue="First Name" runat="server"
            ControlToValidate="txtName" ErrorMessage="Please enter Name" ValidationGroup="TestUserName"
            SetFocusOnError="true"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName"
            ErrorMessage="Please enter only alphabet" ValidationExpression="[a-z]"></asp:RegularExpressionValidator>
        <br />
        Password:
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
            ErrorMessage="Please enter password"></asp:RequiredFieldValidator>
        <br />
        Confirm Password:<asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cvPassword" runat="server" ControlToValidate="txtPassword"
            ControlToCompare="txtConfirmPassword" ErrorMessage="Please enter same passwords"></asp:CompareValidator>
        <br />
        Age:<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="gvAge" runat="server" MinimumValue="18" MaximumValue="50"
            ControlToValidate="txtAge" ErrorMessage="Please enter age between 18 and 50"></asp:RangeValidator>
        <br />
        Date:
        <asp:Calendar ID="cal" runat="server"></asp:Calendar>
        Month:
        <asp:DropDownList ID="ddlMonth" runat="server">
            <asp:ListItem>-Select Month-</asp:ListItem>
            <asp:ListItem>Jan</asp:ListItem>
            <asp:ListItem>Feb</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvMonth" runat="server" InitialValue="-Select Month-"
            ControlToValidate="ddlMonth" ErrorMessage="Please select month"></asp:RequiredFieldValidator>
        <br />
        Email:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
            ErrorMessage="Please enter valid email" ValidationExpression="[\w-]+@([\w-]+\.)+[\w-]+"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="btnSubmit" Text="Submit" runat="server" />
        <asp:Button ID="btnReset" Text="Reset" runat="server" CausesValidation="false" />
    </div>
    </form>
</body>
</html>
