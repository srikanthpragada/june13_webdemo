<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double amount = Double.Parse(txtAmount.Text);
        double discount = amount * 0.10;
        if (amount > 10000)
            discount = amount * 0.20;

        lblDiscount.Text = discount.ToString(); 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Discount Calculation</title>
</head>
<body>
    <form id="form1" runat="server">
     <h2>Discount Calculation</h2>
     Amount : <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
     <p />
     <asp:Button ID="btnCalculate" runat="server" Text="Calculate" 
         OnClick="btnCalculate_Click" />
        <p />
        <asp:Label ID="lblDiscount" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
