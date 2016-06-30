<%@ WebService Language="C#" Class="Courses" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

[WebService(Namespace = "http://www.srikanthtechnologies.com/ws")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Courses  : System.Web.Services.WebService {

    [WebMethod (Description ="Says Hello")]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod (Description ="Provides course schedule")]
    public string GetCourses() {
        return "C Lang:18-July:7-8pm,Java EE:29-July:7-8AM,Android:5-Aug:8-9PM";
    }
    
}