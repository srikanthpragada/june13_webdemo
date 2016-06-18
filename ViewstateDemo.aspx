<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnShow_Click(object sender, EventArgs e)
    {
        lblMsg.Text = DateTime.Now.ToString(); 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Label ID="lblMsg" runat="server" Text="[Nothing]"
             EnableViewState="false"></asp:Label>
        <p />

        <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </form>
</body>
</html>
