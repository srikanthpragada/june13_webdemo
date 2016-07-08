<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        var products = Products.GetProducts();
        var prods = from p in products
                    where p.Price > 40000
                    orderby p.Price descending
                    select new { Name = p.Name, NetPrice = p.Price * 1.14, Quantity = p.Qoh };


        GridView1.DataSource = prods;
        GridView1.DataBind();


        var prods2 = (from p in products
                      orderby p.Price descending
                      select new { Name = p.Name, NetPrice = p.Price * 1.14, Quantity = p.Qoh })
                    .Take(3);



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
