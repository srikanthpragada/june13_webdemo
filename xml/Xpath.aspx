<%@ Page Language="C#" %>
<%@ import Namespace="System.Xml" %>
<%@ import Namespace="System.Xml.Schema" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void btnSearch_Click(Object sender, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Request.MapPath("books.xml"));

        XmlNodeList nl = doc.SelectNodes(txtXPath.Text);
        if (nl == null || nl.Count == 0 )
        {
            Response.Write("Sorry! No Node Found");
            return;
        }

        foreach (XmlNode node in nl)
            Response.Write(node.Name + ":"  +   // node.InnerXml + "<br/>");
              Server.HtmlEncode(node.InnerXml) + "<br>");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>XPath Demo</h2>
        Enter XPATH Expression :
        <asp:TextBox ID="txtXPath" runat="server"  size="50"></asp:TextBox><br />
        <br />
        <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
    </form>
</body>
</html>
