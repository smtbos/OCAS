using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public static class Helper
{
    private static SqlConnection con;

    public static SqlConnection getCon()
    {
        if (con == null)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
        }
        return con;
    }
    public static void Namee()
    {
        HttpContext.Current.Response.Write("hello");
    }
}