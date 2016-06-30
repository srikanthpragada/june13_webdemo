<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        WSClient.CoursesSoapClient proxy = new WSClient.CoursesSoapClient();
        String result = proxy.GetCourses();
        foreach( String course in result.Split(','))
        {
            Response.Write("<h3>" + course + "</h3>");
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     
    </form>
</body>
</html>
