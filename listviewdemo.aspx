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
        <asp:DataPager ID="DataPager2" PageSize="3" runat="server" PagedControlID="ListView1">
             <Fields>
                  <asp:NumericPagerField />
             </Fields>
        </asp:DataPager>
        <p />
        <ul>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                 <li> <%# Eval("prodname") %> - <%# Eval("price") %></li>
            </ItemTemplate>
        </asp:ListView>
        </ul>
        <p />
        <asp:DataPager ID="DataPager1" PageSize="3" runat="server" PagedControlID="ListView1">
             <Fields>
                  <asp:NextPreviousPagerField ButtonType="Button" />
             </Fields>
        </asp:DataPager>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    </form>
</body>
</html>
