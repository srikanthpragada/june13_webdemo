<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "abc")
            Label1.Text = "Username Exists";
        else
            Label1.Text = "Valid Username";
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        lblInside.Text = lblOutside.Text = DateTime.Now.ToString();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                Username : 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                    Text="Validate User" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <p />
                <asp:Label ID="lblInside" runat="server" Text=""></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <p />
        <asp:Label ID="lblOutside" runat="server" Text=""></asp:Label>
        <p>
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <p />
        <img alt="" src="cat3.gif" style="width: 280px; height: 280px" />
        </p>


    </form>
</body>
</html>
