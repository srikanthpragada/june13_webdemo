<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">


    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        XDocument doc = XDocument.Load(Request.MapPath("products.xml"));
        XElement product = (from prod in doc.Root.Elements()
                            where prod.Element("name").Value == txtName.Text
                            select prod).SingleOrDefault();
        if( product == null)
        {
            lblMsg.Text = "Sorry! Product not found!";
            return;
        }

        product.Element("price").Value = txtPrice.Text;

        doc.Save(Request.MapPath("products.xml"));
        lblMsg.Text = "Updated Product Successfully!";
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Product</title>
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
        <asp:Button ID="btnUpdate" runat="server" Text="Update Product" OnClick="btnUpdate_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
