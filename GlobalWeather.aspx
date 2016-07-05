<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Global Weather" %>
<%@ Import Namespace="System.Xml" %>


<script runat="server">

    protected void btnGet_Click(object sender, EventArgs e)
    {
        WSXClient.GlobalWeatherSoapClient proxy = 
            new WSXClient.GlobalWeatherSoapClient("GlobalWeatherSoap12");
        String result = proxy.GetWeather(txtCity.Text, "India");

        XmlDocument doc = new XmlDocument();
        doc.LoadXml(result);
        XmlNode node = doc.SelectSingleNode("//Temperature");
        lblMsg.Text = node.InnerText;
    }
</script>
<asp:Content ID="c1" ContentPlaceHolderID="cpContent" runat="server">
     <h2>Global Weather</h2>
        City Name : <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnGet" runat="server" Text="Get Temp." OnClick="btnGet_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
</asp:Content>