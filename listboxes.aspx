<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void DropDownList1_SelectedIndexChanged(Object sender, EventArgs e)
    {
        Response.Write(
            String.Format("<h3>You selected [{0}] with price [{1}]</h3>",
                                DropDownList1.SelectedItem.Text,
                                DropDownList1.SelectedItem.Value)
        );
    }

    protected void Button1_Click(Object sender, EventArgs e)
    {
        int total = 0;
        foreach (ListItem item in ListBox1.Items)
        {
            if (item.Selected)
                total +=  Int32.Parse(item.Value);
        }
        Response.Write(String.Format("<h3>Total =  {0:##,###} </h3>", total));
    }
    

    protected void Button2_Click(object sender, EventArgs e)
    {
        int count = 0;
        foreach (ListItem item in  CheckBoxList1.Items)
        {
            if (item.Selected)
                count++;
        }

        Response.Write(String.Format("<h3> No. of books selected =  {0} </h3>", count));
    }

    protected void BulletedList1_Click(object sender,  BulletedListEventArgs e)
    {
        string color = BulletedList1.Items[e.Index].Text;  // take color
        
        //  convert string to Color object
        BulletedList1.BackColor = System.Drawing.Color.FromName(color);
    }
 
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>List Boxes Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Dropdown Listbox</h3>
        Select Book :
        <asp:DropDownList ID="DropDownList1" runat="server" Width="182px"
            AutoPostBack="true" 
            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Value="400">JQuery In Action</asp:ListItem>
            <asp:ListItem Value="500">C# Complete Reference</asp:ListItem>
            <asp:ListItem Value="455">Asp.net MVC</asp:ListItem>
            <asp:ListItem Value="450">Linq In Action</asp:ListItem>
            <asp:ListItem Value="750">ASP.NET 4.5 Unleashed</asp:ListItem>
            <asp:ListItem Value="600">Entity Framework</asp:ListItem>
        </asp:DropDownList><br />

        <h3>Multi-select Listbox</h3>
        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
            <asp:ListItem Value="525">Java Complete Reference</asp:ListItem>
            <asp:ListItem Value="495">Spring In Action</asp:ListItem>
            <asp:ListItem Value="400">Pro Hibernate</asp:ListItem>
        </asp:ListBox>
        <p />
        <asp:Button ID="Button1" runat="server" Text="Get Total" OnClick="Button1_Click"/>
        <h3>Checkbox List</h3>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Value="540">ASP.NET Unleashed</asp:ListItem>
            <asp:ListItem Value="400">C# Complete Reference</asp:ListItem>
            <asp:ListItem Value="375">VB.NET Complete Reference</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Count Books" />
        <br />
        <br />
        
        <h3>Bulleted List</h3>
        <asp:BulletedList ID="BulletedList1" runat="server" 
            DisplayMode="LinkButton"
            onclick="BulletedList1_Click">
            <asp:ListItem>Yellow</asp:ListItem>
            <asp:ListItem>Gray</asp:ListItem>
            <asp:ListItem>Wheat</asp:ListItem>
            <asp:ListItem>Blue</asp:ListItem>
        </asp:BulletedList>
    </form>
    
   </body>
</html>
