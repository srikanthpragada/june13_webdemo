<%@ Page Title="List Of Expenses" Theme="light" Language="C#" MasterPageFile="~/expenses/Expenses.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        ExpensesDataContext dc = new ExpensesDataContext();
        GridView1.DataSource = from exp in dc.Expenses
                               orderby exp.DateOn descending
                               select exp;

        GridView1.DataBind();
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>List Of Expenses</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%">
        <Columns>
            <asp:BoundField DataField="Description"  HeaderText="Description" />
            <asp:BoundField DataField="Amount"  HeaderText="Amount" />
            <asp:BoundField DataField="DateOn"  HeaderText="Exp. Date" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="delete.aspx?Id={0}" Text="Delete"  />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="edit.aspx?Id={0}" Text="Edit"  />
        </Columns>
    </asp:GridView>
</asp:Content>

