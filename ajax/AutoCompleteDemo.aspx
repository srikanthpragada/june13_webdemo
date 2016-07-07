<%@ Page Language="C#" %>
<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AutoComplete Demo</title>
</head>
<body>
   <form id="form1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
        <Services>
             <asp:ServiceReference Path="NamesService.asmx" />
        </Services>
    </asp:ScriptManager>
    <h2>AutoComplete Demo</h2>
    Enter Name :  <asp:TextBox runat="server" ID="myTextBox" Width="300"  />
    <ajaxToolkit:AutoCompleteExtender
      runat="server"    
      ID="autoComplete1"    
      TargetControlID="myTextBox" 
      ServicePath="NamesService.asmx"   
      ServiceMethod="GetSelectedNames"
      MinimumPrefixLength="1" 
      CompletionInterval="1000"
      EnableCaching="true"    
      CompletionSetCount="5" />
   </form>

</body>
</html>
