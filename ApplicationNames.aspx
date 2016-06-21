<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SortedSet<String> names = (SortedSet<String>)Application["names"];
        if (names == null)
        {
            // create a new List and put it in Application 
            names = new SortedSet<String>();
            names.Add(txtName.Text);
            Application.Add("names", names);
        }
        else
            names.Add(txtName.Text);

        lblMsg.Text = "Name added successfully!";

    }

    protected void lbList_Click(object sender, EventArgs e)
    {
        SortedSet<String> names = (SortedSet<String>)Application["names"];
        if (names == null)
        {
            lblMsg.Text = "No names found!";
        }
        else
        {
            lblMsg.Text = "<ul>";
            foreach(String name in names)
            {
                lblMsg.Text += "<li>" + name + "</li>";
            }

            lblMsg.Text += "</ul>";
        }

    }

    protected void lbClear_Click(object sender, EventArgs e)
    {
        Application.Remove("names");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<h3>No. of clients : " + Application["sessioncount"] + "</h3>");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Names</title>
</head>
<body>
    <form id="form1" runat="server">
    <h2>Names</h2>
        Name : 
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnAdd" runat="server" Text="Add Name" OnClick="btnAdd_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""  EnableViewState="false" ></asp:Label>
        <p />
        <asp:LinkButton ID="lbList" runat="server" OnClick="lbList_Click">List Names</asp:LinkButton>
        <p />
        <asp:LinkButton ID="lbClear" runat="server" OnClick="lbClear_Click">Clear All</asp:LinkButton>
    </form>
</body>
</html>
