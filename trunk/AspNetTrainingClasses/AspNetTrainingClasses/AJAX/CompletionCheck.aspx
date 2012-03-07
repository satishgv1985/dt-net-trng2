<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompletionCheck.aspx.cs"
    Inherits="AspNetTrainingClasses.AJAX.CompletionCheck" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
        </Services>
    </asp:ScriptManager>
    <div>
        Get Products from .cs file:
        <asp:TextBox ID="txtProducts" runat="server"></asp:TextBox>
        <ajax:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="txtProducts"
            ServiceMethod="GetProductsFromBack" MinimumPrefixLength="1" CompletionSetCount="5">
        </ajax:AutoCompleteExtender>
        <br />
        Get Products from web service:
        <asp:TextBox ID="txtProductsFromService" runat="server"></asp:TextBox>
        <ajax:AutoCompleteExtender ID="aceProductsFromService" runat="server" TargetControlID="txtProductsFromService"
            ServicePath="http://localhost:1463/GetPlaces.asmx" ServiceMethod="GetAllPlaces" MinimumPrefixLength="1" CompletionSetCount="5">
        </ajax:AutoCompleteExtender>
        <br />
        <br />
        Filtered text box
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <ajax:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="TextBox1"
            FilterType="Custom, Numbers" ValidChars="+-=/*()." />
    </div>
    </form>
</body>
</html>
