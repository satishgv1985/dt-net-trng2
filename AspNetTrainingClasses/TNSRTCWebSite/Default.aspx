<%@ Page Title="" Language="C#" MasterPageFile="~/TNSRTCsite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TNSRTCWebSite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
Welcome to TNSRTC<br />
<asp:HyperLink ID="hlLogin" runat="server" NavigateUrl="~/LoginPage.aspx" Text="Reservation Login"></asp:HyperLink>
</asp:Content>
