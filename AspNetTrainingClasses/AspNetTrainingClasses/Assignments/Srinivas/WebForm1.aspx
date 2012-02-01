<%@ Page Title="" Language="C#" MasterPageFile="~/Assignments/Srinivas/Google.Master"
    AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AspNetTrainingClasses.Assignments.Srinivas.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Table ID="tblMain" runat="server" BorderWidth="0" BorderColor="Green" Width="100%"
            CellPadding="0" CellSpacing="0">
            <asp:TableRow ID="TableRow1" runat="server" Height="5">
                <asp:TableCell ID="TableRow1Cell1" runat="server" Width="100%">
                    <asp:Table ID="FirstChildTable" runat="server" HorizontalAlign="Right">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Table ID="TableChrome" runat="server" BorderWidth="1" Width="100%">
                                    <asp:TableRow ID="TableChromeRow1" runat="server">
                                        <asp:TableCell ID="TableChromeR1C1" runat="server" Width="20%">
                                            <asp:Image ID="Image01" runat="server" ImageUrl="~/Assignments/Srinivas/Imgs/ChromeImge.JPG" />
                                        </asp:TableCell>
                                        <asp:TableCell ID="TableCell2" runat="server" Width="80%">
                                            <asp:Table ID="TableChromeInfo" runat="server">
                                                <asp:TableRow ID="TableChromeInfoRow3" runat="server">
                                                    <asp:TableCell ID="TableChromeInfoRow3Cell1" runat="server" Width="100%">
                                                        <asp:Image ID="Image02" runat="server" ImageUrl="~/Assignments/Srinivas/Imgs/Cross_btn.JPG"
                                                            ImageAlign="Right"></asp:Image>
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
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableRow2Cell1" Height="5">&nbsp;</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow3" runat="server" Width="100%">
                <asp:TableCell ID="TableRow3Cell1" runat="server" Width="100%">
                    <asp:Table ID="TableRow3Table" runat="server" BorderWidth="0" BorderColor="Red" Width="100%">
                        <asp:TableRow ID="TableRow3Row1" runat="server" Width="100%">
                            <asp:TableCell ID="TableRow3Row1Cell1" runat="server" Width="100%" HorizontalAlign="Center">
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/Assignments/Srinivas/Imgs/GoogleSearch.JPG"
                                    ImageAlign="Middle" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow5" runat="server" Width="100%">
                <asp:TableCell ID="TableCell1" runat="server" Width="100%">
                    <asp:Table ID="Table1" runat="server" BorderWidth="0" BorderColor="Red" Width="100%">
                        <asp:TableRow ID="TableRow6" runat="server" Width="100%">
                            <asp:TableCell ID="TableCell3" runat="server" Width="100%" HorizontalAlign="Center">
                                <asp:TextBox ID="tbSearchInput" runat="server" Width="475" Height="25"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow7" runat="server" Width="100%">
                <asp:TableCell ID="TableCell4" runat="server" Width="100%">
                    <asp:Table ID="Table2" runat="server" BorderWidth="0" BorderColor="Red" Width="100%">
                        <asp:TableRow ID="TableRow8" runat="server" Width="100%">
                            <asp:TableCell ID="TableCell6" runat="server" Width="25%" HorizontalAlign="Center">
                                &nbsp;
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell5" runat="server" Width="25%" HorizontalAlign="Center">
                                <asp:Button ID="btnGoogleSearch" runat="server" Text="Google Search" Width="105"
                                    Height="25"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell7" runat="server" Width="25%" HorizontalAlign="Center">
                                <asp:Button ID="btnFeelingLucky" runat="server" Text="I'm Feeling Lucky" Width="105"
                                    Height="25"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell8" runat="server" Width="25%" HorizontalAlign="Center">
                                &nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow9" runat="server" Width="100%">
                <asp:TableCell ID="TableCell9" runat="server" Width="100%">
                    <asp:Table ID="Table3" runat="server" BorderWidth="0" Width="100%">
                        <asp:TableRow ID="TableRow10" runat="server" Width="100%" Height="100">
                            <asp:TableCell ID="TableCell10" runat="server" Width="5%" HorizontalAlign="Center">
                                &nbsp;
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell11" runat="server" Width="5%" HorizontalAlign="Center">
                                &nbsp;
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell12" runat="server" Width="5%" HorizontalAlign="Center">
                            &nbsp;
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell13" runat="server" Width="5%" HorizontalAlign="Center"
                                nowrap="nowrap">
                                Google.co.in offered in:
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell14" runat="server" Width="5%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlHindi" runat="server" NavigateUrl="http://www.google.co.in">Hindi</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell15" runat="server" Width="5%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlBengali" runat="server" NavigateUrl="http://www.google.co.in">Bengali</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell16" runat="server" Width="5%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlTelugu" runat="server" NavigateUrl="http://www.google.co.in">Telugu</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell17" runat="server" Width="5%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlMarathi" runat="server" NavigateUrl="http://www.google.co.in">Marathi</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell18" runat="server" Width="5%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlTamil" runat="server" NavigateUrl="http://www.google.co.in">Tamil</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell19" runat="server" Width="7%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlGujarati" runat="server" NavigateUrl="http://www.google.co.in">Gujarati</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell20" runat="server" Width="7%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlKannada" runat="server" NavigateUrl="http://www.google.co.in">Kannada</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell21" runat="server" Width="7%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlMalayalam" runat="server" NavigateUrl="http://www.google.co.in">Malayalam</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell22" runat="server" Width="7%" HorizontalAlign="Center">
                                <asp:HyperLink ID="hlPunjabi" runat="server" NavigateUrl="http://www.google.co.in">Punjabi</asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell23" runat="server" Width="20%" HorizontalAlign="Center">
                            &nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow4" runat="server">
                <asp:TableCell></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>
</asp:Content>
