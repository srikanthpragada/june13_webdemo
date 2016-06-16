<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            lblTotal.Text = String.Format("Total : {0:##,##0}",0);
    }

    private void  CalculateTotal()
    {
        int total = 0;
        foreach( ListItem item in cblCourses.Items)
        {
            if (item.Selected)
                total += Int32.Parse(item.Value);
        }

        lblTotal.Text = String.Format("Total : {0:##,##0}", total);
    }

    protected void cblCourses_SelectedIndexChanged(object sender, EventArgs e)
    {
        CalculateTotal();
    }

    protected void lbUnselectAll_Click(object sender, EventArgs e)
    {
        cblCourses.ClearSelection();
        CalculateTotal();
    }

    protected void lbSelectAll_Click(object sender, EventArgs e)
    {
        foreach ( ListItem item in cblCourses.Items)
        {
           item.Selected = true;
        }
        CalculateTotal();

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Select Courses</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Course Selection</h2>
        <asp:CheckBoxList ID="cblCourses" runat="server"
            AutoPostBack="true"
            OnSelectedIndexChanged="cblCourses_SelectedIndexChanged"
            Font-Size="14pt">
            <asp:ListItem Value="4000">Java SE (Core Java)</asp:ListItem>
            <asp:ListItem Value="4000">Android Programming</asp:ListItem>
            <asp:ListItem Value="5000">Java EE (Adv. Java)</asp:ListItem>
            <asp:ListItem Value="3500">Oracle Database 12c</asp:ListItem>
            <asp:ListItem Value="2000">jQuery and Angular JS</asp:ListItem>
        </asp:CheckBoxList>
        <p />
        [<asp:LinkButton ID="lbUnselectAll" runat="server" OnClick="lbUnselectAll_Click">Unselect All</asp:LinkButton>]
        &nbsp;
        [<asp:LinkButton ID="lbSelectAll" runat="server" OnClick="lbSelectAll_Click">Select All</asp:LinkButton>]
        <p />
        <asp:Label ID="lblTotal" runat="server" Font-Bold="True" Font-Size="20pt"></asp:Label>
    </form>

</body>
</html>
