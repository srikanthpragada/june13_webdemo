<%@ Page Language="C#" %>
<%@ Import Namespace="System.Xml" %>

<!DOCTYPE html>

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

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        City Name : <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnGet" runat="server" Text="Get Temp." OnClick="btnGet_Click" />
        <p />
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
