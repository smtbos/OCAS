using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
public partial class Signin : System.Web.UI.Page
{
	private SqlConnection con;

	protected void Page_Load(object sender, EventArgs e)
	{
		con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
		con.Open();
		Configuration conf = WebConfigurationManager.OpenWebConfiguration(System.Web.Hosting.HostingEnvironment.ApplicationVirtualPath);
		SessionStateSection section = (SessionStateSection)conf.GetSection("system.web/sessionState");
		int timeout = (int)section.Timeout.TotalMinutes;
		Response.Write(timeout);
	}

	protected void Submit_btn_Click(object sender, EventArgs e)
	{
		String email = txt_Email.Text.ToString();
		String password = txt_Password.Text.ToString();
		SqlCommand cmd = new SqlCommand("SELECT * FROM Students WHERE std_email = '" + email + "'", con);
	
		SqlDataReader dr = cmd.ExecuteReader();

		if (dr.Read())
		{
			if (String.Compare(Helper.S(dr["std_password"]), password) == 0)
			{
				Helper.setSmsg("Login Successfull");
				Session["std_id"] = Helper.S(dr["std_id"]);
				Session["std_fname"] = Helper.S(dr["std_fname"]);
				Response.Redirect("Default.aspx");
			}
			else
			{
				Helper.setAmsg("Invalid Password");
				Response.Redirect("Signin.aspx");
			}
		}
		else
		{
			Helper.setAmsg("Invalid Email id");
			Response.Redirect("Signin.aspx");
		}
	}
}