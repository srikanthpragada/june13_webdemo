<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <ajaxToolkit:ConfirmButtonExtender ID="Button1_ConfirmButtonExtender" runat="server" BehaviorID="Button1_ConfirmButtonExtender"
             ConfirmText="Do you want to delete?" TargetControlID="Button1" />
        <p />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" 
            Animated="true"
            Format="yyyy-MM-dd"
            runat="server" 
            BehaviorID="TextBox1_CalendarExtender" 
            TargetControlID="TextBox1" />

    </form>
</body>
</html>
