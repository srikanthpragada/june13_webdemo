<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Invno" DataSourceID="SqlDataSource1">
            <HeaderTemplate>
                <h2>List Of Sales</h2>
            </HeaderTemplate>
            <ItemTemplate>
                <%# Eval("Invno") %>
                <br />
                <%# Eval("ProdId") %>
                <br />
                <%# String.Format("{0:dd-MM-yyyy}",Eval("TransDate")) %>
                <br />
                <%# Eval("Qty") %>
                <br />
                <%# Eval("Amount") %>
                <br />
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [Sales]"></asp:SqlDataSource>
    </form>
</body>
</html>
