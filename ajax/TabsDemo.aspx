<%@ Page Language="C#" %>

<html>
<head runat="server">
    <title>Tabs Demo</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Tabs Demo</h2>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="3">
            <ajaxToolkit:TabPanel ID="TabPanel1" runat="server"
                HeaderText="White Cat">
                <ContentTemplate>
                    <img src="cat.gif" />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>

            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="Ugly Cat">
                <ContentTemplate>
                    <img src="cat2.gif" />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>

            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="Another Cat">
                <ContentTemplate>
                    <img src="cat3.gif" />
                </ContentTemplate>
            </ajaxToolkit:TabPanel>

            <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" HeaderText="Products">
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server"
                        DataKeyNames="prodid" DataSourceID="SqlDataSource1">
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                        ConnectionString="<%$ ConnectionStrings:localDb %>"
                        SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>

        </ajaxToolkit:TabContainer>
    </form>
</body>
</html>
