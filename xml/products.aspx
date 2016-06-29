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

        <asp:GridView ID="GridView1" runat="server" 
            DataSourceID="XmlDataSource1">
        </asp:GridView>

        <asp:XmlDataSource ID="XmlDataSource1" runat="server"
              DataFile="products.xml"></asp:XmlDataSource>

    </form>
</body>
</html>


