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
        Name :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <ajaxToolkit:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender"
             FilterType="LowercaseLetters, UppercaseLetters, Custom"
             ValidChars=" "
             runat="server" BehaviorID="TextBox1_FilteredTextBoxExtender" 
             TargetControlID="TextBox1" />
        <p />
        Mobile Number :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <ajaxToolkit:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender"
                runat="server" BehaviorID="TextBox2_FilteredTextBoxExtender" 
                FilterType="Numbers"
                TargetControlID="TextBox2" />
    </form>
</body>
</html>
