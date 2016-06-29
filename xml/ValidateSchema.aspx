<%@ Page Language="C#" %>
<%@ import Namespace="System.Xml" %>
<%@ import Namespace="System.Xml.Schema" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    protected void Button1_Click(Object s,System.EventArgs e)
    {
        XmlReaderSettings settings  = new XmlReaderSettings();
        settings.ValidationType = ValidationType.Schema;
        settings.Schemas.Add("", Request.MapPath("books.xsd"));
        XmlReader reader =  XmlReader.Create(Request.MapPath("books.xml"), settings);
        
        XmlDocument doc = new XmlDocument();
        try
        {
            doc.Load(reader); // validation is done here 
            Response.Write("Document is valid");
        }
        catch (Exception ex)
        {
            Response.Write("Invalid XML Document " + ex.Message);
        }
        finally
        {
            reader.Close();
            doc = null;
        }
 }        
</script>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Validate XML Document" /></div>
    </form>
</body>
</html>
