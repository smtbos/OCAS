using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public static class Helper
{
    public static String WEBSITE_NAME = "OCAS";
    public static String WEBSITE_FULL_NAME = "Online College Admission System";
    public static String WEBSITE_EMAIL = "admin@ocas.org";
    public static String WEBSITE_PHONE= "7359691439";

    private static SqlConnection con;

    public static SqlConnection getCon()
    {
        if (con == null)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
            con.Open();
        }
        return con;
    }
    public static void Namee()
    {
        HttpContext.Current.Response.Write("hello");
    }
}