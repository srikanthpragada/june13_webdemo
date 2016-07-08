<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">


    protected void btnAdd_Click(object sender, EventArgs e)
    {
        XDocument doc = XDocument.Load(Request.MapPath("products.xml"));
        XElement product = new XElement("product",
                                new XElement("name", txtName.Text),
                                new XElement("price", txtPrice.Text),
                                new XElement("qoh", "0"));
        doc.Root.Add(product);
        doc.Save(Request.MapPath("products.xml"));
        lblMsg.Text = "Added Product Successfully!";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Product</title>
</head>
<body>
    <form id="form1" runat="server">
        Name :
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
        Price :
        <br />
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
