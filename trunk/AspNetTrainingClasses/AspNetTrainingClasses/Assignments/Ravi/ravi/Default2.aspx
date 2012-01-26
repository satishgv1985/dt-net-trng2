<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 145%;
            height: 116px;
        }
        .style2
        {
            width: 115%;
        }
        .style3
        {
            height: 197px;
        }
        .style4
        {
            width: 440px;
            height: 94px;
        }
        .style5
        {
            height: 197px;
            width: 536px;
        }
    </style>
</head>
<!--<body style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 120px; width: 668px">-->
<form id="form1" runat="server">
<div>
</div>
<asp:localize id="Localize1" runat="server"></asp:localize>
<asp:localize id="Localize2" runat="server"></asp:localize>
<table class="style1">
    <tr>
        <td bgcolor="#3B5998">
            <br />
            <br />
            <br />
            <asp:checkbox id="CheckBox1" runat="server" forecolor="White" oncheckedchanged="CheckBox1_CheckedChanged"
                style="z-index: 1; left: 515px; top: 93px; position: absolute" text=" keep me in login" />
            <br />
        </td>
    </tr>
</table>
<asp:label id="Label1" runat="server" forecolor="White" style="z-index: 1; left: 517px;
    top: 35px; position: absolute; height: 17px; width: 115px" text="Email"></asp:label>
<asp:label id="Label2" runat="server" forecolor="White" style="z-index: 1; left: 707px;
    top: 35px; position: absolute; width: 82px" text="Password"></asp:label>
<asp:textbox id="TextBox2" runat="server" style="z-index: 1; left: 516px; top: 55px;
    position: absolute; width: 165px"></asp:textbox>
<asp:textbox id="TextBox3" runat="server" style="z-index: 1; left: 704px; top: 55px;
    position: absolute; width: 168px" textmode="Password"></asp:textbox>
<asp:hyperlink id="HyperLink1" runat="server" forecolor="White" style="z-index: 1;
    left: 707px; top: 91px; position: absolute; width: 149px">Forget your password?</asp:hyperlink>
<asp:button id="Button1" runat="server" backcolor="#006699" font-bold="True" forecolor="#3399FF"
    style="z-index: 1; left: 908px; top: 62px; position: absolute; width: 57px" text="Login" />
<asp:image id="Image1" runat="server" backcolor="#336699" imageurl="~/facebook.gif"
    style="z-index: 1; left: 51px; top: 54px; position: absolute; width: 204px; height: 46px" />
<!--<asp:Panel ID="Panel1" runat="server" 
        style="z-index: 1; left: 10px; top: -18px; position: absolute; height: 152px; width: 954px">
    </asp:Panel>-->
<!--</body>-->
<table class="style2">
    <tr>
        <td bgcolor="#F6F7FA" class="style4" colspan="4">
            <asp:label id="Label3" runat="server" font-bold="True" font-size="Large" forecolor="#0066CC"
                style="z-index: 1; left: 21px; top: 163px; position: absolute; height: 71px;
                width: 363px" text="Facebook Helps You To Connect And Share To The People IN Your Life"></asp:label>
            <asp:label id="Label5" runat="server" forecolor="#006699" style="z-index: 1; left: 516px;
                top: 193px; position: absolute; width: 175px" text="It's Free and always will be."></asp:label>
            <asp:image id="Image2" runat="server" backcolor="White" forecolor="Black" imageurl="~/line.gif"
                style="z-index: 1; left: 514px; position: absolute; width: 256px; height: 1px;
                top: 214px" />
        </td>
    </tr>
    <tr>
        <td bgcolor="#F5F6FA" class="style5">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:image id="Image3" runat="server" imageurl="~/facebok1.gif" style="z-index: 1;
                left: 17px; top: 249px; position: absolute; height: 417px; width: 535px" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
        <td bgcolor="#F6F7FA" class="style3">
            <asp:label id="Label4" runat="server" font-bold="True" forecolor="#006699" style="z-index: 1;
                left: 544px; top: 164px; position: absolute; height: 19px; width: 90px" text="SIGN UP"></asp:label>
            <br />
            <asp:label id="Label6" runat="server" style="z-index: 1; left: 604px; top: 267px;
                position: absolute" text="First Name" font-bold="True"></asp:label>
            <asp:label id="Label7" runat="server" style="z-index: 1; left: 607px; top: 311px;
                position: absolute; width: 74px" text="Last Name" font-bold="True"></asp:label>
            <asp:label id="Label8" runat="server" style="z-index: 1; left: 607px; top: 349px;
                position: absolute" text="Your Email" font-bold="True"></asp:label>
            <asp:label id="Label9" runat="server" style="z-index: 1; left: 580px; top: 390px;
                position: absolute" text="Re-enter-Email" font-bold="True"></asp:label>
            <asp:label id="Label10" runat="server" style="z-index: 1; left: 644px; top: 478px;
                position: absolute" text="I am" font-bold="True"></asp:label>
            <br />
            <br />
            <br />
            <br />
            <asp:textbox id="TextBox4" runat="server" style="z-index: 1; left: 690px; top: 263px;
                position: absolute; height: 26px; width: 217px"></asp:textbox>
            <asp:textbox id="TextBox7" runat="server" style="z-index: 1; left: 695px; top: 386px;
                position: absolute; height: 27px; width: 213px"></asp:textbox>
            <br />
            <br />
            <asp:textbox id="TextBox5" runat="server" ontextchanged="TextBox5_TextChanged" style="z-index: 1;
                left: 692px; top: 309px; position: absolute; width: 216px; height: 25px; bottom: 257px"></asp:textbox>
            <br />
            <br />
            <br />
            <asp:label id="Label12" runat="server" font-bold="True" style="z-index: 1; left: 588px;
                top: 436px; position: absolute; width: 97px" text="New Password"></asp:label>
            <br />
            <br />
            <br />
            <asp:textbox id="TextBox6" runat="server" style="z-index: 1; left: 694px; top: 347px;
                position: absolute; width: 215px; height: 25px"></asp:textbox>
            <asp:textbox id="TextBox8" runat="server" style="z-index: 1; left: 694px; top: 434px;
                position: absolute; width: 214px; height: 25px" textmode="Password"></asp:textbox>
            <asp:dropdownlist id="DropDownList1" runat="server" font-bold="True" style="z-index: 1;
                left: 696px; top: 476px; position: absolute">
                    <asp:ListItem>select sex</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:dropdownlist>
            <br />
            <br />
            <asp:label id="Label11" runat="server" font-bold="True" style="z-index: 1; left: 625px;
                top: 529px; position: absolute; height: 31px; width: 87px" text="Birthday"></asp:label>
            <br />
            <asp:button id="Button2" runat="server" backcolor="#00CC00" onclick="Button2_Click"
                style="z-index: 1; left: 702px; top: 580px; position: absolute; width: 83px"
                text="SIGN UP" />
            <br />
            <br />
            <asp:dropdownlist id="DropDownList2" runat="server" style="z-index: 1; left: 833px;
                top: 525px; position: absolute">
                    <asp:ListItem>YEAR</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                    <asp:ListItem>2000</asp:ListItem>
                    <asp:ListItem>2001</asp:ListItem>
                    <asp:ListItem>2002</asp:ListItem>
                    <asp:ListItem>2003</asp:ListItem>
                    <asp:ListItem>2004</asp:ListItem>
                    <asp:ListItem>2005</asp:ListItem>
                    <asp:ListItem>2006</asp:ListItem>
                    <asp:ListItem>2007</asp:ListItem>
                    <asp:ListItem>2008</asp:ListItem>
                    <asp:ListItem>2009</asp:ListItem>
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                </asp:dropdownlist>
            <asp:dropdownlist id="DropDownList3" runat="server" style="z-index: 1; left: 688px;
                top: 526px; position: absolute">
                    <asp:ListItem>Month</asp:ListItem>
                    <asp:ListItem>Jan</asp:ListItem>
                    <asp:ListItem>Feb</asp:ListItem>
                    <asp:ListItem>Mar</asp:ListItem>
                    <asp:ListItem>Aprl</asp:ListItem>
                    <asp:ListItem>MAY</asp:ListItem>
                    <asp:ListItem>JUN</asp:ListItem>
                    <asp:ListItem>JULY</asp:ListItem>
                    <asp:ListItem>AUG</asp:ListItem>
                    <asp:ListItem>SEPT</asp:ListItem>
                    <asp:ListItem>OCT</asp:ListItem>
                    <asp:ListItem>NOV</asp:ListItem>
                    <asp:ListItem>DEC</asp:ListItem>
                </asp:dropdownlist>
            <asp:dropdownlist id="DropDownList4" runat="server" style="z-index: 1; left: 760px;
                top: 526px; position: absolute; height: 16px; width: 56px">
                    <asp:ListItem>DAY</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:dropdownlist>
            <br />
            <br />
            <br />
        </td>
    </tr>
</table>
</form>
</html>
