<%@ Page Title="" Language="C#" MasterPageFile="~/TNSRTCsite.Master" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs" Inherits="TNSRTCWebSite.Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 139px;
            height: 23px;
        }
        .style4
        {
            height: 23px;
        }
        .style5
        {
            width: 139px;
            height: 26px;
        }
        .style6
        {
            height: 26px;
        }
        .Errortext
        {
            color: Red;
        }
        .body
        {
            height: 680px;
            width: 752px;
            margin: 0px 300px 0px 350px;
            border: 1px ridge orange;
            background-color: #E6E6FA;
        }
        .topimage
        {
            background-image: url('RegistrationLogoBg.gif');
            height: 40px;
            width: 742px;
            padding-top: 5px;
            padding-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="body">
        <h2>
            <asp:Label ID="lblMessage" ForeColor="Green" runat="server" Visible="false" Text="Registration Successfull"></asp:Label></h2>
        <br />
        <asp:HyperLink ID="hlClickHere" runat="server" NavigateUrl="~/LoginPage.aspx" Visible="false" Text="Click Here to login"></asp:HyperLink>
        <br />
        <div class="topimage">
            <div style="height: 50px; font-family: @FangSong; color: Orange; font-size: large;
                font-weight: bolder">
                Registration
            </div>
            <div style="height: 60px">
                &nbsp;
            </div>
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblUsername" runat="server">User Name &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtuName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblPassword" runat="server">Password&nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblConfirmpassword" runat="server">Confirm Password &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCpassword" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblSecurityQuestion" runat="server">Security Question &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlSecurityquestion" runat="server">
                            <asp:ListItem>-Select One-</asp:ListItem>
                            <asp:ListItem>What town were you born in?</asp:ListItem>
                            <asp:ListItem>What town was your father born in?</asp:ListItem>
                            <asp:ListItem>What is the first name of your best childhood friend?</asp:ListItem>
                            <asp:ListItem>What was the name of your primary school?</asp:ListItem>
                            <asp:ListItem>What town was your mother born in?</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:Label ID="lblYouranswer" runat="server">Your Answer &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td class="style4">
                        <asp:TextBox ID="txt_Answer" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblFirstname" runat="server">First Name &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtfName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblLastname" runat="server">Last Name &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Lastname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblEmailid" runat="server">Email ID &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblGender" runat="server">Gender &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblMaritualstatus" runat="server" Text="Maritual Status : "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem>Select Status</asp:ListItem>
                            <asp:ListItem>Single</asp:ListItem>
                            <asp:ListItem>Married</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblDateofbirth" runat="server">Date of Birth &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="ddlDate" runat="server">
                                        <asp:ListItem>Date</asp:ListItem>
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
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlMonth" runat="server">
                                        <asp:ListItem>Month</asp:ListItem>
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
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlYear" runat="server">
                                        <asp:ListItem>Year</asp:ListItem>
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
                                    </asp:DropDownList>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:Label ID="lblOccupation" runat="server" Text="Occupation :  "></asp:Label>
                    </td>
                    <td class="style6">
                        <asp:DropDownList ID="ddlOccupation" runat="server">
                            <asp:ListItem>Government</asp:ListItem>
                            <asp:ListItem>Private</asp:ListItem>
                            <asp:ListItem>Professional</asp:ListItem>
                            <asp:ListItem>Public</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Self Employed</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblMobile" runat="server">Mobile &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_Mobile" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblNationality" runat="server" Text="Nationality : "></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlNationality" runat="server">
                            <asp:ListItem>Indian </asp:ListItem>
                            <asp:ListItem>NRI</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblResedentialaddress" runat="server" ForeColor="#33CC33" Text="Residential Address"></asp:Label>
                    </td>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblAddress" runat="server">Address &nbsp:<span class="Errortext">&nbsp*</span></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblCity" runat="server" Text="City :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblState" runat="server" Text="State :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlState" runat="server">
                            <asp:ListItem>Andhra Pradesh</asp:ListItem>
                            <asp:ListItem>Karnataka</asp:ListItem>
                            <asp:ListItem>Tamilnadu</asp:ListItem>
                            <asp:ListItem>Kerala</asp:ListItem>
                            <asp:ListItem>Madhya Pradesh</asp:ListItem>
                            <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblPin" runat="server" Text="Pin/Zip"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_Country" runat="server">
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Pakistan</asp:ListItem>
                            <asp:ListItem>Australia</asp:ListItem>
                            <asp:ListItem>America</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblPhone" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2" align="center" colspan="2">
                        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
