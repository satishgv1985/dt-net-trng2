<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accordTabs.aspx.cs" Inherits="AspNetTrainingClasses.AJAX.accordTabs" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .tabs
        {
            border: 1px solid green;
            width: 300px;
            height: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Accordion ID="acr" runat="server" Height="300" CssClass="tabs">
            <Panes>
                <asp:AccordionPane ID="AccordionPane1" runat="server">
                    <Content>
                        hi this is accordinapane1
                        hi this is accordinapane1
                        hi this is accordinapane1

                    </Content>
                    <Header>
                        <div style="width:100%; background-color:Gray;">
                        hhh
                        </div>
                        </Header>
                </asp:AccordionPane>
                <asp:AccordionPane ID="AccordionPane2" runat="server">
                    <Content>
                        hi this is accordinapane2
                        hi this is accordinapane2
                        hi this is accordinapane2
                        hi this is accordinapane2
                        hi this is accordinapane2

                    </Content>
                    <Header>
                        <div style="width:100%; background-color:Gray;">
                        second
                        </div></Header>
                </asp:AccordionPane>
            </Panes>
        </asp:Accordion>
    </div>
    </form>
</body>
</html>
