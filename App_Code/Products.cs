using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class Products
{
    public static List<Product> GetProducts()
    {
        List<Product> prods = new List<Product>
        {
            new Product { Name  = "iPhone6", Price = 45000, Qoh = 10 },
            new Product { Name  = "iPad Air 2", Price = 48000, Qoh = 5 },
            new Product { Name  = "Google Nexus 6p", Price = 40000, Qoh = 3 },
            new Product { Name  = "Dell Laptop", Price = 55000, Qoh = 4 },
            new Product { Name  = "Segate External HD 1 TB", Price = 4000, Qoh = 20 }
        };

        return prods; 
    }
}