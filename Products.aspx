<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>List of Products</h2>
        [<a href="addproduct.aspx">Add New Product</a>]
        <p />
        <asp:GridView ID="GridView1" runat="server"
            AutoGenerateColumns="False"
            Style="width: 100%"
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                <asp:BoundField DataField="CatCode" HeaderText="CatCode" SortExpression="CatCode" />
                <asp:HyperLinkField DataNavigateUrlFields="prodid" DataNavigateUrlFormatString="UpdateProduct.aspx?id={0}" Text="Update">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:HyperLinkField>
                <asp:HyperLinkField DataNavigateUrlFields="prodid" 
                    DataNavigateUrlFormatString="DeleteProduct.aspx?id={0}" Text="Delete">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:HyperLinkField>
                
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:localdb %>"
            SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    </form>
</body>
</html>
