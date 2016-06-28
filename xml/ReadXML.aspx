<%@ Page Language="C#" %>
<%@ import Namespace="System.Xml" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    protected void Button1_Click(Object sender, System.EventArgs e)
    {
        XmlTextReader reader = new XmlTextReader(Request.MapPath("books.xml"));
        // reads next node, returns false on end of doc
        while ( reader.Read())  
        {
                        
            if ( reader.NodeType ==  XmlNodeType.Element && reader.Name == "title")
                Response.Write( reader.ReadElementContentAsString() + "<br>");
        }
        reader.Close();
    }
    
    protected void Button2_Click(Object sender, System.EventArgs e)
    {
        XmlTextReader reader = new XmlTextReader(Request.MapPath("books.xml"));
        while ( reader.Read())
        {
            if ( reader.NodeType == XmlNodeType.Element 
                                     && reader.Name == "book")
                Response.Write( reader.GetAttribute("isbn") + "<br>");
       }
       reader.Close();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Read Titles" /><br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Read ISBN" 
            onclick="Button2_Click"/><br />
        <br />

    </form>
</body>
</html>
