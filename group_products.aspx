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
        <table style="width:100%">
        <asp:ListView ID="ListView1" runat="server" GroupItemCount="4" DataSourceID="SqlDataSource1">
            <GroupTemplate>
                  <tr><td id="itemPlaceholder" runat="server"></td></tr>
            </GroupTemplate>
            <ItemTemplate>
                 <td runat="server">
                     <%# Eval("prodname") %> 
                     <br />
                     <%# Eval("price") %>
                 </td>
            </ItemTemplate>
        </asp:ListView>
        </table>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    </form>
</body>
</html>
