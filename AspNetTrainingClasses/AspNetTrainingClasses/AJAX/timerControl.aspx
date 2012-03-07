<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="timerControl.aspx.cs" Inherits="AspNetTrainingClasses.AJAX.timerControl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <marquee>hi this is marquee content</marquee>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Image ID="imgDemo" runat="server" ImageUrl="~/AJAX/images/image1.jpg" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="timerImageDemo" EventName="tick" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:Timer ID="timerImageDemo" runat="server" OnTick="timerImageDemo_Tick" Interval="2000">
        </asp:Timer>
    </div>
    </form>
</body>
</html>
