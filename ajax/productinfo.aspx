<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnGetDetails_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Database.LocalDBConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand
                    ("select prodname, price from products where prodid = @prodid", con);
            cmd.Parameters.AddWithValue("@prodid",txtProdid.Text);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
                lblDetails.Text = dr["prodname"].ToString() + " - " + dr["price"].ToString();
            else
                lblDetails.Text = "Sorry! Invalid Product Id";
        } // end of using 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Product Information</h2>
    Product Id : <asp:TextBox ID="txtProdid" runat="server"></asp:TextBox>
    <p />
    <asp:Button ID="btnGetDetails" runat="server" Text="Get Details" OnClick="btnGetDetails_Click" />
    <p />
    <asp:Label ID="lblDetails" runat="server" Font-Size="20pt" Text=""></asp:Label>
    </form>
</body>
</html>
