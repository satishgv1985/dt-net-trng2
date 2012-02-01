<%@ Page Title="" Language="C#" MasterPageFile="~/Assignments/Naveen/googlepagedesign/googlepageusingmaster/Googlemaster.Master" AutoEventWireup="true" CodeBehind="googlemaps.aspx.cs" Inherits="AspNetTrainingClasses.Assignments.Naveen.googlepagedesign.googlepageusingmaster.googlemaps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <table style="width: 1900" border="0">
        <tr>
            <td style="width: 100%; height:5px">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 100%; height:100px" align="center">
                <table>
                    <tr>
                        <td>
                            <img alt="Google Image" src="../JustGoogle.JPG" align="middle" style="height: 40px" />
                            &nbsp;
                        </td>
                        <td>
                            <input type="text" style="width: 500px; height: 35px; border-color:#FFFFFF; border-style: ridge" />
                            &nbsp;
                        </td>
                        <td>
                            <input type="image" src="../Search.JPG" style="height: 35px; width:100%" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100%;" align="center">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="height: 700px; width: 600px;">
                            <!-- This is Left pane....  -->
                            <table border="0" width="100%">
                                <tr>
                                    <td style="width: 100%; height: 30px">
                                        <table>
                                            <tr>
                                                <td style="width: 30%">
                                                    <input type="button" value="Get directions" />
                                                </td>
                                                <td style="width: 30%">
                                                    <input type="button" value="My places" />
                                                </td>
                                                <td>
                                                    <img alt="More buttons" src="../GoogleMaps_2ndRow_RightButtons.JPG" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%;">
                                        <!--2-->
                                        &nbsp;<hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; height: 30px; text-align: center">
                                        <!--3-->
                                        <a href="http://google.com">Set default location</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; height: 30px; text-align: center">
                                        <!--4-->
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; height: 20px; text-align: center">
                                        <!--5-->
                                        Use Google Maps on your phone: <a href="http://www.google.com">Learn more »</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; height: 20px; text-align: center">
                                        <!--6-->
                                        Add or Edit your business: <a href="http://www.google.com">Learn more »</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100%; height: 330px; text-align: center">
                                        <!--7-->
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <!--8-->
                                        <a href="http://www.google.com">
                                            <img alt="Experience Image" src="GoogleMaps_Experience.JPG" />
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <!--9-->
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <!--10-->
                                        <a href="http://www.google.com">Maps Labs</a>&nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://www.google.com">Help</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <!--11-->
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <!--12-->
                                        Google Maps - ©2011 Google - <a href="http://www.google.com">Terms of Use</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="height: 700px; width: 1000px; color: Gray">
                            <img alt="Map Image" src="../GoogleMapImage.JPG" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
           </table>


</asp:Content>
