using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;


public class ExpensesDataContext  : DataContext 
{
    public ExpensesDataContext() : base ( Database.LocalDBConnectionString)
    {
    }

    public Table<Expenditure> Expenses
    {
        get
        {
            return GetTable<Expenditure>();
        }
    }


}