<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <h2>Registration</h2>
    <form id="form1" runat="server">
    Fullname 
        <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1" 
            ControlToValidate="txtName"
            runat="server" 
            ErrorMessage="Fullname is required!"></asp:RequiredFieldValidator>
        <p />
        Mobile Number
        <br />
        <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2" 
            ControlToValidate="txtMobile"
            runat="server" 
            Display="Dynamic"
            ErrorMessage="Mobile Number is required!"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator 
            ID="RegularExpressionValidator1" 
            runat="server" 
            ControlToValidate="txtMobile"
            ValidationExpression="^[0-9]{10]$"
            ErrorMessage="Invalid Mobile Number. 10 digits required!">
        </asp:RegularExpressionValidator>
        <p />
        <asp:Button ID="btnRegister" runat="server" Text="Register" />


    </form>
</body>
</html>
