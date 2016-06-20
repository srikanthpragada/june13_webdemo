<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("city", ddlCities.SelectedItem.Value);
        c.Expires = DateTime.Now.AddDays(7);
        Response.Cookies.Add(c);  // send cookie to client 
        Response.Redirect("movies.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Select Your City</h2>
     What's your City  :
         <asp:DropDownList ID="ddlCities" runat="server">
             <asp:ListItem Value="Vizag">Vizag</asp:ListItem>
             <asp:ListItem Value="Mumbai">Mumbai</asp:ListItem>
             <asp:ListItem Value="Chennai">Chennai</asp:ListItem>
             <asp:ListItem Value="Bangalore">Bangalore</asp:ListItem>
         </asp:DropDownList>
        <p />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
