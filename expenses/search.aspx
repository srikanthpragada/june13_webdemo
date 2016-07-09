<%@ Page Title="List Of Expenses" Theme="light" Language="C#" MasterPageFile="~/expenses/Expenses.master" %>

<script runat="server">

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        ExpensesDataContext dc = new ExpensesDataContext();
        var expenses = from exp in dc.Expenses
                       where exp.Description.Contains(txtSearchText.Text)
                       orderby exp.DateOn descending
                       select exp;
        if (expenses.Count() == 0)
            lblMsg.Text = "Sorry! No records found!";
        else
        {
            GridView1.DataSource = expenses;
            GridView1.DataBind();
        }

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Search Of Expenses</h2>
    <asp:TextBox ID="txtSearchText" runat="server" placeholder="Search Text"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <p />
    <asp:Label ID="lblMsg" runat="server" Text="" EnableViewState="false"></asp:Label>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Width="100%">
        <Columns>
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" />
            <asp:BoundField DataField="DateOn" HeaderText="Exp. Date" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="delete.aspx?Id={0}" Text="Delete" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="edit.aspx?Id={0}" Text="Edit" />
        </Columns>
    </asp:GridView>


</asp:Content>

