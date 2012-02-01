<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPNetClass.aspx.cs" Inherits="AspNetTrainingClasses.ASPNetClass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblNameText" runat="server"></asp:Label>
        <asp:TextBox ID="tbName" runat="server"></asp:TextBox><br />
        <input type="text" id="txtHTMLName" runat="server" />
        <br />
        <asp:RadioButton ID="rbSex" Text="Male" runat="server" /><br />
        <asp:CheckBox ID="cbLanguage" runat="server" Text="Language" />
        <br />
        <asp:HyperLink ID="hlGoogle" runat="server" Text="Google.com" NavigateUrl="~/SubmittedText.aspx"></asp:HyperLink>
        <br />
        <asp:Literal ID="ltPhoneNo" Text="Phone Number" runat="server"></asp:Literal>
        <br />
        <br />
        <asp:Button ID="tbnSubmit" Text="Submit" runat="server" PostBackUrl="~/SubmittedText.aspx" />
        <br />
        <asp:LinkButton ID="lbSubmit" runat="server" Text="Submit" PostBackUrl="~/SubmittedText.aspx"></asp:LinkButton>
        <br />
        '
        <asp:Image ID="img" runat="server" ImageUrl="~/Chrysanthemum.jpg" Height="200" Width="200" />
        <br />
        <asp:ImageButton ID="ibSubmit" runat="server" ImageUrl="~/Chrysanthemum.jpg" Height="50"
            Width="200" PostBackUrl="~/SubmittedText.aspx" />
        <br />
        <asp:DropDownList ID="ddlCountry" runat="server">
            <asp:ListItem Text="India"></asp:ListItem>
            <asp:ListItem Text="USA"></asp:ListItem>
            <asp:ListItem Text="China"></asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:BulletedList ID="blSubjects" runat="server">
         <asp:ListItem Text="India"></asp:ListItem>
            <asp:ListItem Text="USA"></asp:ListItem>
            <asp:ListItem Text="China"></asp:ListItem>
        </asp:BulletedList>

        <asp:CheckBoxList ID="cblCountry" runat="server">
        <asp:ListItem Text="India"></asp:ListItem>
            <asp:ListItem Text="USA"></asp:ListItem>
            <asp:ListItem Text="China"></asp:ListItem>
        </asp:CheckBoxList>

        <asp:HiddenField ID="HiddenField1" runat="server" Value="hidden thing value" />

        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
         <asp:ListItem Text="India"></asp:ListItem>
            <asp:ListItem Text="USA"></asp:ListItem>
            <asp:ListItem Text="China"></asp:ListItem>
        </asp:ListBox>
        <asp:Panel ID="Panel1" runat="server">
        panel content
        </asp:Panel>
        <asp:Table ID="tblContent" runat="server">
        <asp:TableRow>
        <asp:TableCell>1st row 1st column</asp:TableCell>
        <asp:TableCell>1st row 2nd column</asp:TableCell>
        </asp:TableRow>
        
        </asp:Table>


    </div>
    </form>
</body>
</html>
