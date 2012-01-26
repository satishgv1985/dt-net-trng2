<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AspNetTrainingClasses.Assignments.Anupam.gmail_asp_net.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 61px;
        }
        .style2
        {
            width: 116px;
            height: 41px;
        }
        .style3
        {
            width: 790px;
        }
        .style4
        {
            width: 100%;
            height: 91px;
        }
        .redtext 
        {
            color: #DD4B39;
        }
        .style5
        {
            width: 959px;
            height: 34px;
            margin-left: 0px;
        }
        .style6
        {
            width: 91%;
            height: 246px;
        }
        .style7
        {
            width: 657px;
        }
        .style8
        {
            width: 349px;
            height: 168px;
        }
        .greytext 
        {
             color: #555555;
        }
        .style10
        {
            height: 168px;
        }
        .style11
        {
            width: 245px;
            height: 244px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 476px">
    
        <table class="style1" cellspacing="0">
            <tr>
                <td bgcolor="WhiteSmoke" class="style3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img alt="" class="style2" src="google_logo_41.png" />&nbsp;</td>
                <td bgcolor="WhiteSmoke">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BackColor="#F6F6F6" Height="29px" 
                        style="margin-left: 365px" Text="Sign In" Width="65px" 
                        BorderColor="Gainsboro" BorderStyle="Solid" BorderWidth="1px" />
                </td>
            </tr>
        </table>
    
        <table class="style4">
            <tr>
                <td>
                  <h2 class="redtext"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create a new Google Account</h2>
                    <p class="redtext"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        &nbsp;<img alt="" class="style5" src="bar.bmp" /></p>
&nbsp;<table align="center" cellspacing="0" class="style6">
                        <tr>
                            <td class="style7">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <table class="style6">
                                    <tr>
                                        <td class="style8">
                                            
                                            <img align="right" alt="" class="style11" src="more-than.jpg" 
                                                style="padding: 0px" /></td>
                                        <td nowrap="nowrap" class="style10">
                                            <asp:Panel ID="Panel1" runat="server">
                                                <h2 class="redtext"> Google Account is<br /> more than just Gmail</h2><p class="greytext">Talk, 
                                                chat, share, schedule, store, organize,<br />collaborate, discover and create. Use<br />Google products from Gmail to Google+ to <br />YouTube, view your search history, all with<br />one username and password, all backed up <br />all the time and easy to find at (you <br />guessed it) Google.com.</p> <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                            </asp:Panel>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td class="style7">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <br />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
