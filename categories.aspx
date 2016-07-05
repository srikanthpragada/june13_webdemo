<%@ Page Title="Categories" Language="C#" MasterPageFile="~/MasterPage.master" Theme="blue" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="cpContent" Runat="Server">
    <h2>List Of Categories</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CatCode" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="CatCode" HeaderText="CatCode" ReadOnly="True" SortExpression="CatCode" />
        <asp:BoundField DataField="CatDesc" HeaderText="CatDesc" SortExpression="CatDesc" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:localdb %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>

</asp:Content>

