<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gvP.aspx.cs" Inherits="AspNetTrainingClasses.gvP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gridViewProducts" runat="server">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <%#CalculatedValue(Eval(""),Eval("")) %> 
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
