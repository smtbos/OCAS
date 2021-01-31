using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Signup : System.Web.UI.Page
{
    private SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = Helper.getCon();
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
        String ph = dd_PH.Text.ToString();

        // Contact Details
        String address = txt_Address.Text.ToString();
        String city = txt_City.Text.ToString();
        String pincode = txt_Pincode.Text.ToString();
        
    }
}