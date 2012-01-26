<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleSearchPage.aspx.cs"
    Inherits="AspNetTrainingClasses.Assignments.Srinivas.GoogleSearchPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Google</title>
    <link rel="Shortcut Icon" href="Imgs/Google_Icon.ico" />
    <style type="text/css">
        #chrometable
        {
            width: 15%;
            border: 1px solid gray;
            visibility: visible;
        }
        .selectedPage
        {
            border-top-style: solid;
            border-top-color: Red;
            font-weight: bold;
        }
        .toprowtable
        {
            background-color: Black;
            color: White;
        }
        .toprowtable asp:TableHeaderRow :hover
        {
            background-color: Gray;
            cursor: pointer;
            color: White;
        }
        .toprowtable a
        {
            background-color: Black;
            cursor: pointer;
            color: White;
        }
        
        .bottomrowtable
        {
            background-color: White;
            text-decoration: none;
            color: Gray;
        }
        .bottomrowtable:hover
        {
            background-color: White;
            text-decoration: underline;
            cursor: pointer;
            color: Gray;
        }
        a
        {
            text-decoration: none;
        }
        a:hover
        {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Table ID="tblMain" runat="server" BorderWidth="1" Width="100%" CellPadding="2"
            CellSpacing="2">
            <asp:TableHeaderRow ID="tblMainHdrRow" runat="server" CssClass="toprowtable" BackColor="">
                <asp:TableHeaderCell ID="TableHeaderCell0" runat="server">+You</asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell1" runat="server">Search</asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell2" runat="server">
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Assignments/Srinivas/Srinivas_GoogleImagesPage.htm">Images</asp:HyperLink></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell3" runat="server">
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Assignments/Srinivas/Srinivas_GoogleMapsPage.htm">Maps</asp:HyperLink></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell4" runat="server">
                    <asp:HyperLink ID="HyperLink8" runat="server">News</asp:HyperLink></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell5" runat="server">
                    <asp:HyperLink ID="HyperLink1" runat="server">Orkut</asp:HyperLink></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell6" runat="server">
                    <asp:HyperLink ID="HyperLink2" runat="server">Gmail</asp:HyperLink></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell7" runat="server">
                    <asp:HyperLink ID="HyperLink3" runat="server">More</asp:HyperLink></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell8" runat="server" Width="25%">&nbsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell11" runat="server" Width="25%">&nbsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell12" runat="server" Width="10%">&nbsp;</asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell9" runat="server">
                    <asp:HyperLink ID="HyperLink4" runat="server">Sign In</asp:HyperLink></asp:TableHeaderCell>
                <asp:TableHeaderCell ID="TableHeaderCell10" runat="server">
                    <asp:HyperLink ID="HyperLink5" runat="server"><img alt="wheel.jpg" src="Imgs/Wheel.JPG" /></asp:HyperLink></asp:TableHeaderCell>
            </asp:TableHeaderRow>
            <asp:TableRow ID="TableRow1" runat="server">
                <asp:TableCell ID="TableRow1Cell1" runat="server" ColumnSpan="10"></asp:TableCell>
                <asp:TableCell ID="TableRow1Cell2" runat="server" ColumnSpan="3">
                    <asp:Table ID="TableChrome" runat="server" BorderWidth="1" Width="100%">
                        <asp:TableRow ID="TableChromeRow1" runat="server">
                            <asp:TableCell ID="TableChromeR1C1" runat="server" Width="20%">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Assignments/Srinivas/Imgs/ChromeImge.JPG" />
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell2" runat="server" Width="80%">
                                <asp:Table ID="TableChromeInfo" runat="server">
                                    <asp:TableRow ID="TableChromeInfoRow3" runat="server">
                                        <asp:TableCell ID="TableChromeInfoRow3Cell1" runat="server" Width="100%">
                                        <asp:Image runat="server" ImageUrl="~/Assignments/Srinivas/Imgs/Cross_btn.JPG" ImageAlign="Right">
                                        </asp:Image> 
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableChromeInfoRow2" runat="server">
                                        <asp:TableCell ID="TableChromeInfoRow2Cell1" runat="server" Width="100%">
                                            <asp:Label ID="Label1" runat="server" Text="Label">A faster way to browse the web</asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="TableChromeInfoRow1" runat="server">
                                        <asp:TableCell ID="TableChromeInfoRow1Cell1" runat="server" Width="100%">
                                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Assignments/Srinivas/Imgs/Chrome_btn.JPG" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableRow2Cell1" ColumnSpan="13" Height="5"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3" runat="server">
                <asp:TableCell ID="TableRow3Cell1" runat="server" ColumnSpan="8"></asp:TableCell>
                <asp:TableCell ID="TableRow3Cell2" runat="server" ColumnSpan="1">
                    <asp:Table ID="TableRow3Table" runat="server" CellPadding="130">
                        <asp:TableRow ID="TableRow3Row1" runat="server">
                            <asp:TableCell ID="TableRow3Row1Cell1" runat="server">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/Assignments/Srinivas/Imgs/GoogleSearch.JPG"
                                    ImageAlign="Middle" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
                <asp:TableCell ID="TableCell1" runat="server" ColumnSpan="3"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow4" runat="server">
                <asp:TableCell ID="TableCell3" runat="server" ColumnSpan="8"></asp:TableCell>
                <asp:TableCell ID="TableCell4" runat="server" ColumnSpan="1">
                    <asp:Table ID="Table1" runat="server" >
                        <asp:TableRow ID="TableRow5" runat="server">
                            <asp:TableCell ID="TableCell5" runat="server"> </asp:TableCell>
                                <asp:TableCell ID="TableRow4Cell1" runat="server">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
                <asp:TableCell ID="TableCell6" runat="server" ColumnSpan="3"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
    </form>
</body>
</html>
