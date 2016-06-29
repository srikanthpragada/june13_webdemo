<%@ Page Language="C#" %>
<%@ import Namespace="System.Xml" %>
<%@ import Namespace="System.Data.SqlClient" %>
<%@ import Namespace="System.Xml.Schema" %>
<script runat="server">
    protected void btnCreate_Click(Object sender,System.EventArgs e)
    {
        SqlConnection con = new SqlConnection
           (@"Data Source=(localdb)\v11.0;Initial Catalog=msdb;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from products", con);
        SqlDataReader dr = cmd.ExecuteReader();
        // create xml document
        XmlTextWriter writer=new XmlTextWriter(
                  Request.MapPath("products.xml"),
                  null);
        writer.WriteStartElement("products"); // root element
        while (dr.Read()) 
        {
            writer.WriteStartElement("product");
            writer.WriteAttributeString("prodid", "", dr["prodid"].ToString());
            writer.WriteAttributeString("name", "", dr["prodname"].ToString());
            writer.WriteAttributeString("qoh", "", dr["qoh"].ToString());
            writer.WriteAttributeString("price", "", dr["price"].ToString());
            writer.WriteAttributeString("remarks", "", dr["remarks"].ToString());
            writer.WriteEndElement(); // </product>
        }
        writer.WriteEndElement();  // </products>
        writer.Close();
        //Response.Redirect("products.xml");
        Response.Write("XML Document Created..");
   }
</script>
<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
   <form id="form1" runat="server">
     <asp:Button ID="btnCreate" runat="server" OnClick="btnCreate_Click" Text="Create XML Document" />        
   </form>
</body>
</html>
