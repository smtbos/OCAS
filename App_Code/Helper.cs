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
    public static String WEBSITE_PHONE = "7359691439";

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

    public static String[] getArrayWithAddedString(String[] eles, String newele)
    {
        String[] neweles = new String[eles.Length + 1];
        int i = 0;
        foreach (String ele in eles)
        {
            neweles[i++] = ele;
        }
        neweles[i] = newele;
        return neweles;
    }

    public static void setAmsg(String amsg)
    {
        if (HttpContext.Current.Session["amsg"] == null)
        {
            String[] s = new String[] { amsg };
            HttpContext.Current.Session["amsg"] = s;
        }
        else
        {
            HttpContext.Current.Session["amsg"] = getArrayWithAddedString((String[])HttpContext.Current.Session["amsg"], amsg);
        }
    }

    public static void setSmsg(String smsg)
    {
        if (HttpContext.Current.Session["smsg"] == null)
        {
            String[] s = new String[] { smsg };
            HttpContext.Current.Session["smsg"] = s;
        }
        else
        {
            HttpContext.Current.Session["smsg"] = getArrayWithAddedString((String[])HttpContext.Current.Session["smsg"], smsg);
        }
    }

    public static void Namee()
    {
        HttpContext.Current.Response.Write("hello");
    }

	public static String S(Object o){
		return o.ToString().Trim();
	}
}