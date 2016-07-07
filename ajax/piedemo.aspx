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
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <h2>Students </h2>
        <ajaxToolkit:PieChart ID="PieChart1" runat="server">
            <PieChartValues>
                <ajaxToolkit:PieChartValue Category="Java" Data="500"
                    PieChartValueColor="red" PieChartValueStrokeColor="red" />
                <ajaxToolkit:PieChartValue Category="C#" Data="200"
                    PieChartValueColor="blue" PieChartValueStrokeColor="blue" />
                <ajaxToolkit:PieChartValue Category="Oracle" Data="250"
                    PieChartValueColor="green" PieChartValueStrokeColor="green" />
            </PieChartValues>
        </ajaxToolkit:PieChart>

        <ajaxToolkit:BarChart ID="BarChart1" runat="server">
            <Series>
                <ajaxToolkit:BarChartSeries Name="Java" Data="500" />
                <ajaxToolkit:BarChartSeries Name="C#" Data="200" />
                <ajaxToolkit:BarChartSeries Name="Oracle" Data="250" />
            </Series>

        </ajaxToolkit:BarChart>
    </form>
</body>
</html>
