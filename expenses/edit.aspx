<%@ Page Title="Add Expenditure" Language="C#" MasterPageFile="~/expenses/Expenses.master" Theme="light" %>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try {
            ExpensesDataContext dc = new ExpensesDataContext();
            Expenditure ex = (from exp in dc.Expenses
                              where exp.Id == Int32.Parse(Request.QueryString["id"])
                              select exp).SingleOrDefault();
            ex.Description = txtDesc.Text;
            ex.Amount = Decimal.Parse(txtAmount.Text);
            ex.DateOn = DateTime.Parse(txtDate.Text);

            dc.SubmitChanges();
            lblMsg.Text = "Updated Successfully!";
        }
        catch(Exception ex)
        {
            lblMsg.Text = "Error --> " + ex.Message;
        }

    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ExpensesDataContext dc = new ExpensesDataContext();
            Expenditure ex = (from exp in dc.Expenses
                              where exp.Id == Int32.Parse(Request.QueryString["id"])
                              select exp).SingleOrDefault();

            txtDesc.Text = ex.Description;
            txtAmount.Text = ex.Amount.ToString();
            txtDate.Text = ex.DateOn.ToString("dd/MM/yy");
        }
    }

    protected void btnCanel_Click(object sender, EventArgs e)
    {
        Response.Redirect("list.aspx");

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Update Expenditure</h2>
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
    <asp:Button ID="btnAdd" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    &nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="Canel" OnClick="btnCanel_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>


</asp:Content>

