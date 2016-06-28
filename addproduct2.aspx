<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
    {
        DropDownList ddl = FormView1.Row.FindControl("ddlCategory") as DropDownList;
        SqlDataSource1.InsertParameters["CatCode"].DefaultValue =  ddl.SelectedValue;
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
            InsertCommand="INSERT INTO [Products] ([ProdName], [Price], [Qoh], [Remarks], [CatCode]) VALUES (@ProdName, @Price, @Qoh, @Remarks, @CatCode)" 
            SelectCommand="SELECT * FROM [Products]">
            <InsertParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Qoh" Type="Int32" />
                <asp:Parameter Name="Remarks" Type="String" />
                <asp:Parameter Name="CatCode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Qoh" Type="Int32" />
                <asp:Parameter Name="Remarks" Type="String" />
                <asp:Parameter Name="CatCode" Type="String" />
                <asp:Parameter Name="ProdId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:FormView ID="FormView1" runat="server" 
            DefaultMode="Insert"
            DataKeyNames="ProdId" 
            DataSourceID="SqlDataSource1" OnItemInserting="FormView1_ItemInserting">
        
            <InsertItemTemplate>
                <h2>Add New Product</h2>
                Prod Name <br />
                <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                <p />
                Price <br />
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <p />
                Qoh <br />
                <asp:TextBox ID="QohTextBox" runat="server" Text='<%# Bind("Qoh") %>' />
                <p />
                Remarks <br />
                <asp:TextBox ID="RemarksTextBox" runat="server" Text='<%# Bind("Remarks") %>' />
                <p />
                CatCode <br />
                <asp:DropDownList ID="ddlCategory" 
                    runat="server"
                    DataSourceID="sdsCategories"
                    DataTextField="catdesc"
                    DataValueField="catcode">
                </asp:DropDownList>
                <p />
                <asp:Button ID="InsertButton" runat="server" 
                    CausesValidation="True" 
                    CommandName="Insert" 
                    Text="Insert" />
                &nbsp;
                <asp:Button ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" 
                    CommandName="Cancel"
                    Text="Cancel" />
            </InsertItemTemplate>
        </asp:FormView>

          <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [Categories]">

                </asp:SqlDataSource>
    </form>
</body>
</html>
