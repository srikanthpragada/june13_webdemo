<%@ WebService Language="C#" Class="NamesService" %>

using System;
using System.Web;
using System.Web.Services;
using System.Collections.Generic;
using System.Web.Services.Protocols;

[WebService(Namespace = "http://st.com/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]
public class NamesService  : System.Web.Services.WebService {

    [WebMethod]
    public String[] GetSelectedNames (String prefixText,   int count)
    {
        List<String> names = new List<string>()
        {"Steven Walther","Joe Stager","Boby Dylon",
         "Bob Taylor","Andy King","Scott Mitchell",
         "Ed. Roman","Scott Gutrie"};

        List<String> selectednames =
             names.FindAll(s => s.ToUpper().Contains(prefixText.ToUpper()));

        selectednames.Sort();
            
        return  selectednames.ToArray();
    }
}

