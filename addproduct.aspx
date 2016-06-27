﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
   
        <asp:DetailsView ID="DetailsView1" runat="server" 
            DefaultMode="Insert"
            AutoGenerateRows="False" 
            DataKeyNames="ProdId" 
            DataSourceID="SqlDataSource1" 
            Height="50px" 
            Width="125px">
            <Fields>
                <asp:BoundField DataField="ProdId" HeaderText="ProdId" 
                    InsertVisible="False"
                    ReadOnly="True" SortExpression="ProdId" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Qoh" HeaderText="Qoh" SortExpression="Qoh" />
                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                <asp:BoundField DataField="CatCode" HeaderText="CatCode" SortExpression="CatCode" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:localdb %>" 
            DeleteCommand="DELETE FROM [Products] WHERE [ProdId] = @ProdId" 
            InsertCommand="INSERT INTO [Products] ([ProdName], [Price], [Qoh], [Remarks], [CatCode]) VALUES (@ProdName, @Price, @Qoh, @Remarks, @CatCode)" 
            SelectCommand="SELECT * FROM [Products]" 
            UpdateCommand="UPDATE [Products] SET [ProdName] = @ProdName, [Price] = @Price, [Qoh] = @Qoh, [Remarks] = @Remarks, [CatCode] = @CatCode WHERE [ProdId] = @ProdId">
            <DeleteParameters>
                <asp:Parameter Name="ProdId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Qoh" Type="Int32" />
                <asp:Parameter Name="Remarks" Type="String" />
                <asp:Parameter Name="CatCode" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="Qoh" Type="Int32" />
                <asp:Parameter Name="Remarks" Type="String" />
                <asp:Parameter Name="CatCode" Type="String" />
                <asp:Parameter Name="ProdId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
