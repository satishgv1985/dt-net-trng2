<%@ Page Title="" Language="C#" MasterPageFile="~/TNSRTCsite.Master" AutoEventWireup="true"
    CodeBehind="SearchBus.aspx.cs" Inherits="TNSRTCWebSite.BookTicket" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        <Services>
        <asp:ServiceReference Path="http://localhost:1285/Places.asmx" />
        </Services>
    </asp:ScriptManager>
    <h2>
        Book ticket</h2>
    From Place:
    <asp:TextBox ID="txtFrom" runat="server"></asp:TextBox>
    <ajax:AutoCompleteExtender ID="aecPlaces" runat="server" TargetControlID="txtFrom"
        ServiceMethod="GetPlaces" 
        MinimumPrefixLength="1" CompletionSetCount="5">
    </ajax:AutoCompleteExtender>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;To Place:
    <asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
</asp:Content>
