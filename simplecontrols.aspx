<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">
    protected void ibMicrosoft_Click(Object sender, 
                            System.Web.UI.ImageClickEventArgs e)
    {
        lblMsg.Text = String.Format("You clicked on {0},{1}", e.X, e.Y);
    }

    protected void lbDate_Click(Object sender, EventArgs e)
    {
        lblMsg.Text = "Current Date & Time : " + DateTime.Now.ToString();
    }
    protected void chkCheck_CheckedChanged(Object sender, EventArgs e)
    {
        if (chkCheck.Checked)
            lblMsg.Text = "Checkbox Checked";
        else
            lblMsg.Text = "Chekcbox Unchecked";
    }

    protected void Page_Load(Object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            Response.Write("<h3>You made a trip to server because of Postback...</h3>");
        else
            Response.Write("You entered into page directly - First Request");
    }
 
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Simple Controls Demo</h2>
        <asp:CheckBox ID="chkCheck" runat="server" 
        Text="Check Box"  
        OnCheckedChanged="chkCheck_CheckedChanged" AutoPostBack="True" 
        />
        <br />
        <br />
        <asp:RadioButton ID="rbFirst" runat="server" Checked="True" 
                  GroupName="radio" Text="First Button"/>
        <asp:RadioButton ID="rbSecond" runat="server" GroupName="radio" 
            Text="Second Button"  /><br />
        <br />
        <asp:LinkButton ID="lbDate" runat="server" OnClick="lbDate_Click">
        System Date & Time</asp:LinkButton><br />
        <br />
        <asp:ImageButton ID="ibMicrosoft" runat="server" 
            ImageUrl="~/surfing.gif" 
            OnClick="ibMicrosoft_Click" /><br />
        <br />
        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
        </form>
</body>
</html>
