<%@ Page Title="" Language="C#" MasterPageFile="~/TNSRTCsite.Master" AutoEventWireup="true"
    CodeBehind="HomePage.aspx.cs" Inherits="TNSRTCWebSite.HomePage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .pagedesign
        {
            height: 500px;
            width: 500px;
            margin: 50px;
            background-image: url("Images/innerbookings.png");
            background-repeat: no-repeat;
        }
        .style1
        {
            width: 58%;
            margin-right: 0px;
            margin-top: 0px;
            height: 236px;
        }
        .style2
        {
            width: 395px;
        }
        .style4
        {
            width: 100%;
        }
        .style6
        {
            width: 395px;
            height: 34px;
        }
        .style7
        {
        }
        .style8
        {
            width: 456px;
            height: 34px;
        }
        .style9
        {
            width: 65px;
        }
        .style10
        {
            width: 456px;
            height: 23px;
        }
        .style11
        {
            width: 395px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="pagedesign">
        <div style="height: 2px">
        </div>
        <div>
            <h2 style="text-align: left">
                Book Tickets Now!
            </h2>
        </div>
        <div>
            <table class="style1">
                <tr>
                    <td class="style7">
                        <asp:RadioButton ID="rbtntwoWay" runat="server" GroupName="Journey" Text="Two Way" />
                    </td>
                    <td class="style2">
                        <asp:RadioButton ID="rbtoneWay" runat="server" GroupName="Journey" Text="One Way" />
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblFrom" runat="server" Text="From"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="placeName" 
                            DataValueField="placeName">
                            <asp:ListItem Value="0">Bangalore</asp:ListItem>
                            <asp:ListItem Value="1">Hyderabad</asp:ListItem>
                            <asp:ListItem Value="2">Tirupathi</asp:ListItem>
                            <asp:ListItem Value="3">Kurnool</asp:ListItem>
                            <asp:ListItem Value="4">Vijayawada</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:TNSRTCConnectionString %>" 
                            SelectCommand="SELECT [placeName] FROM [tblPlace]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblTo" runat="server" Text="To"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList2" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="placeName" 
                            DataValueField="placeName">
                            <asp:ListItem Value="0">Bangalore</asp:ListItem>
                            <asp:ListItem Value="1">Hyderabad</asp:ListItem>
                            <asp:ListItem Value="2">Tirupathi</asp:ListItem>
                            <asp:ListItem Value="3">Kurnool</asp:ListItem>
                            <asp:ListItem Value="4">Vijayawada</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        <asp:Label ID="lblnPassengers" runat="server" Text="No.of Passengers"></asp:Label>
                    </td>
                    <td class="style6">
                        <table class="style4">
                            <tr>
                                <td class="style9">
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem Value="0">Adult</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                        <asp:ListItem Value="0">Child</asp:ListItem>
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblDepart" runat="server" Text="Depart"></asp:Label>
                    </td>
                    <td class="style2">
                        <div>
                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
                            <asp:TextBox ID="txtCal" runat="server"></asp:TextBox> 
                            <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtCal" >
                            </asp:CalendarExtender>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:Label ID="lblbusType" runat="server" Text="Bus Type"></asp:Label>
                    </td>
                    <td class="style11">
                        <asp:DropDownList ID="DropDownList5" runat="server">
                            <asp:ListItem Value="0">Super Deluxe</asp:ListItem>
                            <asp:ListItem Value="1">Metro Deluxe</asp:ListItem>
                            <asp:ListItem Value="2">Super Luxury</asp:ListItem>
                            <asp:ListItem Value="3">Garuda AC</asp:ListItem>
                            <asp:ListItem Value="4">Indra AC</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Label ID="lblConcession" runat="server" Text="Concession"></asp:Label>
                    </td>
                    <td class="style2">
                        <asp:DropDownList ID="DropDownList6" runat="server">
                            <asp:ListItem Value="0">General Booking</asp:ListItem>
                            <asp:ListItem Value="1">Cat Card</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style7" align="center" colspan="2">
                        <asp:Button ID="lblchkAvailability" runat="server" BackColor="Black" ForeColor="White"
                            Text="Check Availability" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
