using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConnectToLocalDb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLocalDB_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection (Database.LocalDBConnectionString);
        con.Open();
        Response.Write("Connected To LocalDB Successfully!");
        con.Close();


    }
    protected void btnOracle_Click(object sender, EventArgs e)
    {
        OracleConnection con = new OracleConnection(@"data source=localhost;uid=hr;pwd=hr");
        con.Open();
        Response.Write("Connected To Oracle Successfully!");
        con.Close();
    }
}