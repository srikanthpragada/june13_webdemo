<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Login</h2>
        Username 
        <br />
        <asp:TextBox ID="TextBox1" 
            runat="server"></asp:TextBox>
        <p />
        Password
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <p />

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
