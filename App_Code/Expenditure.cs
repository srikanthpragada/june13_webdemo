using System;
using System.Collections.Generic;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Web;


[Table(Name="expenses")]
public class Expenditure
{
    [Column ( Name ="exp_id", IsDbGenerated = true, IsPrimaryKey = true)]
    public int Id { get; set; }

    [Column(Name = "exp_desc")]
    public String Description { get; set; }

    [Column(Name = "exp_amount")]
    public Decimal Amount { get; set; }

    [Column(Name = "exp_date")]
    public DateTime DateOn { get; set; }

}