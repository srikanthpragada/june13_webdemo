<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void ddlAuthors_SelectedIndexChanged(object sender, EventArgs e)
    {
        imgAuthor.ImageUrl = "images/" + ddlAuthors.SelectedItem.Value;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        // display first author's image when page is loaded
        imgAuthor.ImageUrl = "images/" + ddlAuthors.Items[0].Value; 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Authors</h2>

        Select Author 
        <asp:DropDownList ID="ddlAuthors" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlAuthors_SelectedIndexChanged">
            <asp:ListItem Value="anders.jpg">Anders</asp:ListItem>
            <asp:ListItem Value="john.jpg">John Resig</asp:ListItem>
            <asp:ListItem Value="stephen.jpg">Stephen Walther</asp:ListItem>
        </asp:DropDownList>
        <p />
        <asp:Image ID="imgAuthor" Width="300px" Height="300px" runat="server" />
    </form>
</body>
</html>
