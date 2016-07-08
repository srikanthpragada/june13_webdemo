<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        XDocument doc = XDocument.Load(Request.MapPath("products.xml"));
        var prods = from p in doc.Descendants("product")
                    orderby p.Element("name").Value
                    select new { Name = p.Element("name").Value,
                        Price = p.Element("price").Value };

        GridView1.DataSource = prods;
        GridView1.DataBind();

        XDocument doc2 = XDocument.Load(Request.MapPath("products.xml"));
        var names = from p in doc.Descendants("name")
                    select p.Value;

        foreach(String n in names)
            Response.Write(n + "<br/>");


    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</body>
</html>
