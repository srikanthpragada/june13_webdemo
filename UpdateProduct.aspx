<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;


        using (SqlConnection con = new SqlConnection(Database.LocalDBConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand
                    ("select prodname, price, remarks from products where prodid = @prodid", con);
            cmd.Parameters.AddWithValue("@prodid", Request.QueryString["id"]);
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();  // move to first and only row 
            txtName.Text = dr["prodname"].ToString ();
            txtPrice.Text = dr["price"].ToString ();
            txtRemarks.Text = dr["remarks"].ToString ();
        } // end of using 
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Database.LocalDBConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand
                    ("update products set prodname=@prodname, price = @price, remarks = @remarks where prodid = @prodid", con);
            cmd.Parameters.AddWithValue("@prodid", Request.QueryString["id"]);
            cmd.Parameters.AddWithValue("@prodname",txtName.Text);
            cmd.Parameters.AddWithValue("@price", txtPrice.Text);
            cmd.Parameters.AddWithValue("@remarks", txtRemarks.Text);
            try {
                int count = cmd.ExecuteNonQuery();
                if (count == 1)
                    lblMsg.Text = "Updated Product Successfully!";
                else
                    lblMsg.Text = "Could not update product. Product is missing!";
            }
            catch(Exception ex)
            {
                lblMsg.Text = "Error : " + ex.Message;
            }


        } // end of using 

    }

    protected void btnCancel_Click(object sender, EventArgs e)
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
    <h2>Update Product</h2>
     Name 
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
       Price 
        <br />
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p />
        Remarks
        <br />
        <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" Rows="3" columns="50" ></asp:TextBox>
        <p />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        &nbsp;
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <p />
        <a href="Products.aspx">List Of Products</a>

    </form>
</body>
</html>
