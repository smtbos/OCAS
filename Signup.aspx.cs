using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Signup : System.Web.UI.Page
{
	private SqlConnection con;

	protected void Page_Load(object sender, EventArgs e)
	{
		con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ConnectionString);
		con.Open();
		Load_Demo_Data();
	}

	protected void btn_Signup_Click(object sender, EventArgs e)
	{
		Boolean flag = true;

		// Student Name
		String fname = txt_Fname.Text.ToString();
		String mname = txt_Mname.Text.ToString();
		String lname = txt_Lname.Text.ToString();

		// Father Details
		String ffname = txt_FFname.Text.ToString();
		String fmname = txt_FMname.Text.ToString();
		String flname = txt_FLname.Text.ToString();
		String foccupation = txt_Foccupation.Text.ToString();
		String fincome = txt_Fincome.Text.ToString();

		// Authentication Details
		String email = txt_Email.Text.ToString();
		String mobile = txt_Mobile.Text.ToString();
		String password = txt_Password.Text.ToString();

		// Student Information
		String dob = txt_Dob.Text.ToString();
		String gender = dd_Gender.Text.ToString();
		String category = dd_Category.Text.ToString();
		String religion = dd_Religion.Text.ToString();
		String nationality = dd_Nationality.Text.ToString();
		String ph = dd_PH.Text.ToString();
		String aadhaar = txt_Aadhaar.Text.ToString();

		// Contact Details
		String address = txt_Address.Text.ToString();
		String city = txt_City.Text.ToString();
		String pincode = txt_Pincode.Text.ToString();

		SqlCommand cmd = new SqlCommand("INSERT INTO Students(std_fname, std_mname, std_lname, std_ffname, std_fmname, std_flname, std_foccupation, std_fincome, std_email, std_mobile, std_aadhaar, std_password, std_dob, std_gender, std_category, std_religion, std_nationality, std_ph, std_address, std_city, std_pincode) output INSERTED.std_id VALUES('" + fname + "', '" + mname + "', '" + lname + "', '" + ffname + "', '" + fmname + "', '" + flname + "', '" + foccupation + "', '" + fincome + "', '" + email + "', '" + mobile + "', '" + aadhaar + "', '" + password + "', '" + dob + "', '" + gender + "', '" + category + "', '" + religion + "', '" + nationality + "', '" + ph + "', '" + address + "', '" + city + "', '" + pincode + "')", con);

		int res = (int)cmd.ExecuteScalar();
		if (Convert.ToBoolean(res))
		{
			Session["std_id"] = res;
			Session["std_fname"] = fname;
			Helper.setSmsg("Student Registraion Successfull");
			Response.Redirect("Default.aspx");
		}
		else
		{
			Helper.setAmsg("Error");
			Response.Redirect("Signup.aspx");
		}


	}

	public void Load_Demo_Data()
	{
		txt_Fname.Text = "Smit";
		txt_Mname.Text = "Kishorbhai";
		txt_Lname.Text = "Bosamiya";

		txt_FFname.Text = "Kishorkumar";
		txt_FMname.Text = "Chhaganlal";
		txt_FLname.Text = "Bosamiya";
		txt_Foccupation.Text = "Cloth Merchant";
		txt_Fincome.Text = "8000 Monthly";
		txt_Aadhaar.Text = "454566667777";

		txt_Email.Text = "smtbos@gmail.com";
		txt_Mobile.Text = "8128389164";

		txt_Dob.Text = "2001-01-01";
		dd_Gender.Text = "Male";
		dd_Category.Text = "EWS";
		dd_PH.Text = "No";
		dd_Nationality.Text = "Indian";
		
		txt_Address.Text = "Luhar Street\nMain Bazar";
		txt_City.Text = "Damanagar";
		txt_Pincode.Text = "365220";
	}
}