using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

public class Database
{
    public static string LocalDBConnectionString
    {
        get
        {
            return WebConfigurationManager.ConnectionStrings["localdb"].ConnectionString;
        }
    }
}