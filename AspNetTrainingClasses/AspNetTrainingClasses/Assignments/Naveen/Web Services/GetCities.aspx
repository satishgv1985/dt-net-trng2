<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetCities.aspx.cs" Inherits="AspNetTrainingClasses.Assignments.Naveen.Web_Services.GetCities" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 112%;
            height: 145px;
        }
        .style2
        {
        }
        .style3
        {
            width: 184px;
            height: 49px;
        }
        .style4
        {
            height: 49px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="txtCountry" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:TextBox ID="txtgetCities" runat="server" Height="328px" 
                        style="margin-top: 0px" TextMode="MultiLine" Width="774px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" class="style2" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="GetCities" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
    
</body>
</html>
