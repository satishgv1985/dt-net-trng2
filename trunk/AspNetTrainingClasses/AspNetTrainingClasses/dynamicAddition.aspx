<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dynamicAddition.aspx.cs" Inherits="AspNetTrainingClasses.dynamicAddition" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
          <asp:Table ID="Table1" runat="server" CssClass="padingleft" Width="592px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label Text="Name" runat="server" ID="lblName"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFname" runat="server"> </asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Gender</asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButton Text="Male" ID="rbtMale" runat="server" GroupName="Gender" /></asp:TableCell>
                <asp:TableCell>
                    <asp:RadioButton runat="server" Text="Female" ID="rbtFemale" GroupName="Gender" /></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    Birthday
                </asp:TableCell>
                <asp:TableCell><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>
                <asp:TableCell>
            <asp:DropDownList ID="DropDownList1" runat="server">
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
            <asp:TableRow>
                <asp:TableCell>Country</asp:TableCell><asp:TableCell>
                    <asp:DropDownList ID="ddlCountry" runat="server">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
            Language
            <asp:Panel ID="pnlDynamic" runat="server">
          
            </asp:Panel>

                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlLanguage" runat="server">
                    </asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

        dynamic added text box
    </div>
    </form>
</body>
</html>
