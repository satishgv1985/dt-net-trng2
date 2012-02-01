<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="valGroup.aspx.cs" Inherits="AspNetTrainingClasses.valGroup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>
            Button.ValidationGroup Example</h3>
        <asp:Label ID="NameLabel" Text="Enter your name:" runat="Server" AssociatedControlID="NameTextBox">
        </asp:Label>
        &nbsp;
        <asp:TextBox ID="NameTextBox" runat="Server">
        </asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="NameTextBox"
            ValidationGroup="PersonalInfoGroup" ErrorMessage="Enter your name." runat="Server">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="AgeLabel" Text="Enter your age:" runat="Server" AssociatedControlID="AgeTextBox">
        </asp:Label>
        &nbsp;
        <asp:TextBox ID="AgeTextBox" runat="Server">
        </asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="AgeTextBox"
            ValidationGroup="PersonalInfoGroup" ErrorMessage="Enter your age." runat="Server">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        <!--When Button1 is clicked, only validation
    controls that are a part of PersonalInfoGroup
    are validated.-->
        <asp:Button ID="Button1" Text="Validate" CausesValidation="true" ValidationGroup="PersonalInfoGroup"
            runat="Server" />
        <br />
        <br />
        <asp:Label ID="CityLabel" Text="Enter your city of residence:" runat="Server" AssociatedControlID="CityTextBox">
        </asp:Label>
        &nbsp;
        <asp:TextBox ID="CityTextBox" runat="Server">
        </asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="CityTextBox"
            ValidationGroup="LocationInfoGroup" ErrorMessage="Enter a city name." runat="Server">
        </asp:RequiredFieldValidator>
        <br />
        <br />
        <!--When Button2 is clicked, only validation
    controls that are a part of LocationInfoGroup
    are validated.-->
        <asp:Button ID="Button2" Text="Validate" CausesValidation="true" ValidationGroup="LocationInfoGroup"
            runat="Server" />
    </div>
    </form>
</body>
</html>
