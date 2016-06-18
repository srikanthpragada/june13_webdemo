<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
 
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblMsg.Text = Calendar1.SelectedDate.ToLongDateString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
     <center>
       <asp:AdRotator ID="AdRotator1" runat="server"
          Width="500px" Height="50px" 
          AdvertisementFile="~/ads.xml" 
          Target="_blank" />
       <p />
       <asp:Calendar ID="Calendar1" runat="server" 
               onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
       <br />
       
       <p />
       <asp:Label ID="lblMsg" runat="server"></asp:Label>
        
     </center>
    </form>
</body>
</html>
