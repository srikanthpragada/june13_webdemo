<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Database.LocalDBConnectionString))
        {
            con.Open();
            try
            {
                SqlCommand cmd = new SqlCommand
                    ("update products set price = @price where prodid = @prodid", con);
                cmd.Parameters.AddWithValue("@prodid", txtProdId.Text);
                cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                int count = cmd.ExecuteNonQuery();
                if (count == 1)
                    lblMsg.Text = "Updated Price Successfully!";
                else
                    lblMsg.Text = "Sorry!  Product Id Not Found!";
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Sorry! Error -- >" + ex.Message;
            }
        } // end of using 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Change Product Price</h2>
        Product Id 
        <br />
        <asp:TextBox ID="txtProdId" runat="server"></asp:TextBox>
        <p />
        New Price
        <br />
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnUpdate" runat="server" Text="Update Price" OnClick="btnUpdate_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
