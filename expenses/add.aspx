<%@ Page Title="Add Expenditure" Language="C#" MasterPageFile="~/expenses/Expenses.master" Theme="light" %>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        try {
            ExpensesDataContext dc = new ExpensesDataContext();
            Expenditure exp = new Expenditure
            {
                Description = txtDesc.Text,
                Amount = Decimal.Parse(txtAmount.Text),
                DateOn = DateTime.Parse(txtDate.Text)
            };

            dc.Expenses.InsertOnSubmit(exp);
            dc.SubmitChanges();
            lblMsg.Text = "Added Successfully!";
        }
        catch(Exception ex)
        {
            lblMsg.Text = "Error --> " + ex.Message;
        }

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtAmount.Text = "";
        txtDesc.Text = "";
        txtDate.Text = "";
        txtDesc.Focus();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Add Expenditure</h2>
    Description 
    <br />
    <asp:TextBox ID="txtDesc" runat="server" Columns="50"></asp:TextBox>
    <p />
    Amount 
    <br />
    <asp:TextBox ID="txtAmount" type="number" runat="server"></asp:TextBox>
    <p />
    Date On (dd/mm/yy)
    <br />
    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
    <p />
    <asp:Button ID="btnAdd" runat="server" Text="Add Expenditure" OnClick="btnAdd_Click" />
    &nbsp;
    <asp:Button ID="btnClear" runat="server" Text="Clear All" OnClick="btnClear_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>


</asp:Content>

