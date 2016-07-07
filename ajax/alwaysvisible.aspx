<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < 100; i++)
            Response.Write( i.ToString() + "<br>");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Always Visible</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" BackColor="yellow">
             This is a simple Panel.
    </asp:Panel>
    <ajaxToolkit:AlwaysVisibleControlExtender 
        ID="Panel1_AlwaysVisibleControlExtender" 
        runat="server" Enabled="True"  
        TargetControlID="Panel1" 
        HorizontalSide="Right" 
        VerticalSide ="Top"
        HorizontalOffset="50" 
        VerticalOffset="10">
    </ajaxToolkit:AlwaysVisibleControlExtender>
    </form>
</body>
</html>
