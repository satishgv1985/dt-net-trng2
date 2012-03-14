<%@ Page Title="" Language="C#" MasterPageFile="~/TNSRTCsite.Master" AutoEventWireup="true" CodeBehind="WelcomeUser.aspx.cs" Inherits="TNSRTCWebSite.user.WelcomeUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

Welcome <asp:Label ID="lblName" runat="server"></asp:Label> 
<br />
<asp:HyperLink ID="hlBookTicket" runat="server" Text="Book Ticket" NavigateUrl="~/user/BookTicket.aspx"></asp:HyperLink>
<br />
<asp:HyperLink ID="HyperLink1" runat="server" Text="Booking History" NavigateUrl="~/user/BookingHistory.aspx"></asp:HyperLink>
<br />
<asp:HyperLink ID="HyperLink2" runat="server" Text="Edit Profile" NavigateUrl="~/user/EditProfile.aspx"></asp:HyperLink>
</asp:Content>
