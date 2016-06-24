<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Database.LocalDBConnectionString))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand
                    ("select prodname, price from products order by prodname", con);
            SqlDataReader dr = cmd.ExecuteReader();
            Response.Write("<h2>List Of Products </h2>");
            Response.Write("<table border='1'><tr><th>Product Name </th><th>Price </th></tr>");
            while(dr.Read())
            {
                Response.Write("<tr><td>" + dr["prodname"].ToString() + "</td><td>" + dr["price"].ToString() + "</td></tr>");
            }
            Response.Write("</table>");
        } // end of using 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       
    </form>
</body>
</html>
