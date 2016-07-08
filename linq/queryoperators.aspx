<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        var products  = Products.GetProducts();
        var prods = products.OrderBy(p => p.Name)
                    .Select(p => new { Name = p.Name, Price = p.Price, NetPrice = p.Price * 1.14 });


        GridView1.DataSource = prods;
        GridView1.DataBind();

        // display name of product with highest price 
        var maxprice = products.Max(p => p.Price);
        var product = products.Where(p => p.Price == maxprice).First();

        Response.Write(product.Name + ":" + product.Price );


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
