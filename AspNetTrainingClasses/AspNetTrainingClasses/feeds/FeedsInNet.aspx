<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedsInNet.aspx.cs" Inherits="AspNetTrainingClasses.FeedsInNet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">

        google.load("feeds", "1");

        function initialize() {
            var url = '';
            var dropdown = document.getElementById("ddlNews");

            for (var i = 0; i < dropdown.length; i++) {
                if (dropdown[i].selected) {
                    url = dropdown[i].value;
                    break;
                }
            }
            var feed = new google.feeds.Feed(url);

            var noEntries = document.getElementById("txtnofeeds");
            if (noEntries.value != '')
                feed.setNumEntries(noEntries.value);
            else
                feed.setNumEntries(2);

            feed.load(function (result) {
                if (!result.error) {
                    var container = document.getElementById("feed");
                    for (var i = 0; i < result.feed.entries.length; i++) {
                        var entry = result.feed.entries[i];
                        var div = document.createElement("div");
                        // Build the News Details
                        var iHTML = "News" + (i + 1) + "): <b>" + entry.title + "</b> <br />" + entry.contentSnippet;
                        div.innerHTML = iHTML;
                        container.appendChild(div);
                    }
                }
            });
        }


        google.setOnLoadCallback(initialize);

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <h1>
        Loads the feeds.</h1>
    Select the news and enter Number of Feeds to display in Feeds section.
    <br />
    By default 2 feeds are displayed with Google News.
    <br />
    <br />
    Select News:
    <asp:DropDownList ID="ddlNews" runat="server">
        <asp:ListItem Text="Google News" Value="http://news.google.co.in/news?pz=1&cf=all&ned=in&hl=en&output=rss"
            Selected="True"></asp:ListItem>
        <asp:ListItem Text="CNN News" Value="http://rss.cnn.com/rss/edition.rss"></asp:ListItem>
    </asp:DropDownList>
    <br />
    Number of Feeds:
    <asp:TextBox ID="txtnofeeds" runat="server" Text="2"></asp:TextBox>
    <br />
    <asp:Button ID="btnSumbit" runat="server" Text="Submit" UseSubmitBehavior="false" />
    <br />
    <br />
    Feeds:
    <table style="border: 1px solid green;">
        <tr>
            <td>
                <div id="feed">
                </div>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
