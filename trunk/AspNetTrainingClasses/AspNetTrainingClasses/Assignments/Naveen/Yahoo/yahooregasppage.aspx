<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="yahooregasppage.aspx.cs"
    Inherits="AspNetTrainingClasses.Assignments.Naveen.Yahoo.yahooregasppage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .labeldesign
        {
            text-align: right;
            width: 170px;
        }
        .border
        {
            margin-top: 0px;
        }
        .body
        {
            width: 752px;
            margin: 0px 296px 0px 296px;
        }
        .topimage
        {
            background-image: url('Images/bgimg.png');
            height: 40px;
            width: 752px;
            padding-top: 5px;
            padding-left: 10px;
        }
        .headerdesign
        {
            top: 12px;
            left: 920px;
            position: absolute;
        }
        .headerdesign a
        {
            text-decoration: none;
        }
        .headerdesign hover
        {
            text-decoration: underline;
        }
        .padingleft
        {
            padding-left: 20px;
        }
        .fromname
        {
            text-align: right;
        }
        .colorForId
        {
            font-family: Cambria;
            font-size: medium;
            color: #7f2986;
            font-weight: bold;
        }
        .colorFontId
        {
            font-family: Consolas;
            font-size: 84%;
            width: 190px;
            font-weight: 200;
        }
        .passwordstrength
        {
            height: 4px;
            width: 4px;
            border: 1px;
            border-color: green;
        }
        .hrdesign
        {
            height: 15px;
            width: 500px;
        }
        .fnamerowdesign
        {
            width: 300px;
        }
        .passwordimage
        {
            width: 15px;
            height: 10px;
            border: 1px solid green;
            line-height: 10px;
        }
    </style>
</head>
<body class="border">
    <form id="form1" runat="server">
    <div class="body">
        <div class="topimage">
            <img src="Images/yahoo.gif" alt="Yahoo Image" />
            <div class="headerdesign">
                <a href="">Yahoo!</a> |
            </div>
            <div class="headerdesign" style="left: 980px">
                <a href="">Help</a>
            </div>
        </div>
        <div style="height: 25px">
            &nbsp;
        </div>
        <div class="padingleft" style="font-family: Cambria; font-size: 121%">
            With a Yahoo! Account, get free email and other leading web
            <br />
            services.
            <div class="hrdesign">
                <hr />
            </div>
        </div>
        <asp:Table ID="tblTopTable" runat="server" CssClass="padingleft" Width="592px">
            <asp:TableRow>
                <asp:TableCell CssClass="labeldesign">
                    <asp:Label Text="Name" runat="server" ID="lblName"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:TextBox ID="txtFname" runat="server"> </asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="labeldesign">
                    Gender
                </asp:TableCell>
                <asp:TableCell CssClass="fnamerowdesign">
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:RadioButton Text="Male" ID="rbtMale" runat="server" GroupName="Gender" />
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:RadioButton runat="server" Text="Female" ID="rbtFemale" GroupName="Gender" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="labeldesign">
                    Birthday
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Table runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:TextBox ID="txtBirthday" runat="server" Width="50">
                                </asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                    <asp:DropDownList runat="server">
                                    <asp:ListItem Text="-Select Month-" Value="1"></asp:ListItem>
                                    <asp:ListItem>January</asp:ListItem>
                                    <asp:ListItem>February</asp:ListItem>
                                    <asp:ListItem>March</asp:ListItem>
                                    <asp:ListItem>April</asp:ListItem>
                                    <asp:ListItem>May</asp:ListItem>
                                    <asp:ListItem>June</asp:ListItem>
                                    <asp:ListItem>July</asp:ListItem>
                                    <asp:ListItem>August</asp:ListItem>
                                    <asp:ListItem>September</asp:ListItem>
                                    <asp:ListItem>October</asp:ListItem>
                                    <asp:ListItem>November</asp:ListItem>
                                    <asp:ListItem>December</asp:ListItem>
                                    </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox ID="Year" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="labeldesign">
                    Country
                </asp:TableCell>
                <asp:TableCell Width="250px">
                    <asp:DropDownList ID="ddlCountry" runat="server">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="labeldesign">
                     Language
                </asp:TableCell>
                <asp:TableCell Width="250px">
                    <asp:DropDownList ID="ddlLanguage" runat="server">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <div style="height: 25px">
            &nbsp;
        </div>
        <div class="padingleft">
            <div class="colorForId">
                Select an ID and Password
            </div>
            <div style="width: 500px">
                <hr />
            </div>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="colorFontId">
                        Desired Yahoo! ID and Email
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:TextBox runat="server" ID="txtMail">
                                    </asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>@
                                        <asp:DropDownList runat="server">
                                        <asp:ListItem>Yahoo.in</asp:ListItem>
                                        <asp:ListItem>Yahoo.com</asp:ListItem>
                                        <asp:ListItem>ymail.com</asp:ListItem>
                                        <asp:ListItem>rocketmail.com</asp:ListItem>
                                        </asp:DropDownList>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Button runat="server" ID="txtCheck" Text="Check" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="labeldesign">
                        Password
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Table runat="server">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:TextBox runat="server" ID="txtPassword">
                                    </asp:TextBox>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Table runat="server">
                                        <asp:TableRow>
                                            <asp:TableCell style="font-size:small" >
                                                <span >
                                                    Password Strength
                                                </span>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                               <asp:TableCell CssClass="passwordimage" Width="100%" >                         
                                               </asp:TableCell>
                                               <asp:TableCell CssClass="passwordimage">                         
                                               </asp:TableCell>
                                               <asp:TableCell CssClass="passwordimage">                         
                                               </asp:TableCell>
                                               <asp:TableCell CssClass="passwordimage">                         
                                               </asp:TableCell>
                                      </asp:TableRow>
                                         <%--<asp:TableRow>
                                <asp:TableCell CssClass="passwordstrength">
                                <div class="passwordstrength"></div>
                                </asp:TableCell>
                                <asp:TableCell CssClass="passwordstrength">
                                <div class="passwordstrength"></div>
                                </asp:TableCell >
                                <asp:TableCell CssClass="passwordstrength">
                                <div class="passwordstrength"></div>
                                </asp:TableCell>
                                <asp:TableCell CssClass="passwordstrength">
                                </asp:TableCell>
                           </asp:TableRow>--%>
                                    </asp:Table>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="labeldesign">
                        Type the Password Again
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtcnfmPassword" runat="server">
                        </asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <div style="height: 25px">
                &nbsp;
            </div>
            <div class="colorForId">
                In case you forget your ID or Password ...
            </div>
            <div style="width: 500px">
                <hr />
            </div>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell CssClass="labeldesign">
                       Secret Question1
                    </asp:TableCell>
                    <asp:TableCell>
                         <asp:DropDownList ID="ddlSecurity1" runat="server">
                            <asp:ListItem>-Select One-</asp:ListItem>
                            <asp:ListItem>What town were you born in?</asp:ListItem>
                            <asp:ListItem>What town was your father born in?</asp:ListItem>
                            <asp:ListItem>What is the first name of your best childhood friend?</asp:ListItem>
                            <asp:ListItem>What was the name of your primary school?</asp:ListItem>
                            <asp:ListItem>What town was your mother born in?</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                         </asp:DropDownList>
                     </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                    <span id="Specify Question" style="visibility:hidden">
                    Specify Question Here</span></asp:TableCell>
                    <asp:TableCell>
                          <span id="othersq1" style="visibility:hidden">
                                <asp:TextBox ID="TextBox1" runat="server">
                                </asp:TextBox>
                           </span>
                    </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
               <asp:TableCell>
               Your Answer
                </asp:TableCell>
                <asp:TableCell>
                <asp:TextBox runat="server">
                </asp:TextBox>
                </asp:TableCell>
               </asp:TableRow>
               <asp:TableRow>
               <asp:TableCell CssClass="labeldesign">
                       Secret Question2
               </asp:TableCell>
               <asp:TableCell>
               <asp:DropDownList ID="ddlSecurity2" runat="server">
               <asp:ListItem></asp:ListItem>
               <asp:ListItem></asp:ListItem>
               <asp:ListItem></asp:ListItem>
               <asp:ListItem></asp:ListItem>
               </asp:DropDownList>
               </asp:TableCell>
               </asp:TableRow>
            </asp:Table>
        </div>
    </div>
    </form>
</body>
</html>
