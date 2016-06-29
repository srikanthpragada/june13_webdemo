<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="XmlDataSource1">
            <Columns>
                <asp:BoundField DataField="isbn" HeaderText="isbn" SortExpression="isbn" />
                <asp:TemplateField HeaderText="Title">
                 <ItemTemplate>
                   <%# XPath("./title") %>
                 </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
            DataFile="books.xml"></asp:XmlDataSource>
    </div>
    </form>
</body>
</html>
