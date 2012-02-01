<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="header.ascx.cs"
    Inherits="AspNetTrainingClasses.WebUserControl" %>
   <table border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-left: 0px;
        margin-right: 50px">
        <tr>
            <td>
                <table border="0" cellpadding="2" cellspacing="0" width="100%">
                    <tr>
                        <td width="50" align="center">
                            <!-- one -->
                            <a href="http://www.googleplus.com">You+</a>
                        </td>
                        <td width="50" align="center" id="tdSearch" runat="server">
                            <!-- two -->
                            <a href="googlesearch.aspx">Search</a>
                        </td>
                        <td width="50" align="center" id="tdImages" runat="server">
                            <!-- three -->
                            <a href="googleimagepage.aspx">Images</a>
                        </td>
                        <td width="50" align="center">
                            <!-- four -->
                            <a href="googlemaps.aspx">Maps</a>
                        </td>
                        <td width="50" align="center">
                            <!-- five -->
                            <a href="http://news.google.co.in/nwshp?hl=en&tab=in">News</a>
                        </td>
                        <td width="50" align="center">
                            <!-- six -->
                            <a href="http://www.orkut.com">Orkut</a>
                        </td>
                        <td width="50" align="center">
                            <!-- seven -->
                            <a href="http://www.gmail.com">Gmail</a>
                        </td>
                        <td width="50" align="center" onclick="javascript:func_onclick_DisplayMore()" onmouseout="javascript:func_onmouseout_Removemore()"
                            style="background-image: icon.png; padding-right: 5px;">
                            <!-- eight -->
                            <span style="cursor: hand;">More</span>
                        </td>
                        <td width="520" style="background-color: #2D2D2D" align="center">
                            <!-- nine -->
                        </td>
                        <td width="50" nowrap="nowrap" align="center">
                            <!-- ten -->
                            <a href="http://www.loginpage.google.com">Sign in</a>
                        </td>
                        <td width="30" align="center">
                            <!-- eleven -->
                            <img src="..\Wheel.jpg" width="20" alt="Options" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>