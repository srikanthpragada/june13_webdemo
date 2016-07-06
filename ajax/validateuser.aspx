<%@ Page Language="C#"  %>
<%@ Import Namespace ="System.Collections.Generic" %>
<%
    
    List<String> users = new List<String>();
    users.Add("abc");
    users.Add("def");
    users.Add("xyz");
    // System.Threading.Thread.Sleep(1000);
    
    Response.ContentType = "text/plain";
    
    string uname = Request.QueryString["uname"];
    
    if (users.Contains(uname))
        Response.Write("Username is already present!");
    else
        Response.Write("Valid Username!");  // user not found
 %>
 