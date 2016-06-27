<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
    {
        Response.Redirect("products.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:localdb %>" 
            DeleteCommand="DELETE FROM [Products] WHERE [ProdId] = @ProdId" 
            SelectCommand="SELECT * FROM [Products] WHERE ([ProdId] = @ProdId)">
            <DeleteParameters>
                <asp:Parameter Name="ProdId" Type="Int32" />
            </DeleteParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ProdId" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProdId"
            DataSourceID="SqlDataSource1" OnItemDeleted="FormView1_ItemDeleted">
            <ItemTemplate>
                ProdId:
                <asp:Label ID="ProdIdLabel" runat="server" Text='<%# Eval("ProdId") %>' />
                <br />
                ProdName:
                <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Bind("ProdName") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                Qoh:
                <asp:Label ID="QohLabel" runat="server" Text='<%# Bind("Qoh") %>' />
                <br />
                Remarks:
                <asp:Label ID="RemarksLabel" runat="server" Text='<%# Bind("Remarks") %>' />
                <br />
                CatCode:
                <asp:Label ID="CatCodeLabel" runat="server" Text='<%# Bind("CatCode") %>' />
                <p />
                <asp:Button ID="DeleteButton" runat="server" 
                    OnClientClick="return confirm('Do you want to delete this product?')"
                    CausesValidation="False" 
                    CommandName="Delete" 
                    Text="Delete" />
            </ItemTemplate>
        </asp:FormView>
        <p />
        <a href="Products.aspx">Go Back</a>
   
    </form>
</body>
</html>
