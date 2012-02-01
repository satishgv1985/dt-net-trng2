<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="PageToAccessUCvalue.aspx.cs" Inherits="AspNetTrainingClasses.PageToAccessUCvalue" %>

<%@ Register Src="~/AccessUCvalue.ascx" TagPrefix="uc" TagName="AccessUCValue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:AccessUCValue ID="ucAccessValue" runat="server" />
    <br />
    <asp:Label ID="lblName" runat="server"></asp:Label>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
        onclick="btnSubmit_Click" />
</asp:Content>
