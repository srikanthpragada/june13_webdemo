<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConnectToLocalDb.aspx.cs" Inherits="ConnectToLocalDb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btnLocalDB" runat="server" Text="Connect To LocalDB" OnClick="btnLocalDB_Click" />
        <p />
        <asp:Button ID="btnOracle" runat="server" Text="Connect To Oracle 11g" OnClick="btnOracle_Click" />
    </form>
</body>
</html>
