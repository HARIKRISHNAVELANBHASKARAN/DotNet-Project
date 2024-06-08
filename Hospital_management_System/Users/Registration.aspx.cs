using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Hospital_management_System.Users
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
   
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    con.Open();
                    string str1 = "SELECT ISNULL(MAX(lbl_rid), 0) AS Id FROM UserTab";
                    cmd = new SqlCommand(str1, con);
                    int id1 = Convert.ToInt32(cmd.ExecuteScalar()) + 1;
                }
                catch (Exception ex)
                {
                    Response.Write("Error during Page Load: " + ex.Message);
                }
                finally
                {
                    if (con.State == ConnectionState.Open)
                        con.Close();
                }
            }
        }

        protected void btn_login_b_Click(object sender, EventArgs e)
        {
            if (txt_signup_pass.Text != txt_signup_cpass.Text)
            {
                Response.Write("<script>alert('Passwords do not match.')</script>");
                return; 
            }
            try
            {
                con.Open();
                string str = "INSERT INTO UserTab (username, email, mobile, signup_pass) VALUES (@username, @email, @mobile, @signup_pass)";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@username", txt_signup_username.Text);
                cmd.Parameters.AddWithValue("@email", txt_signup_email.Text);
                cmd.Parameters.AddWithValue("@mobile", txt_signup_mobile.Text);
                cmd.Parameters.AddWithValue("@signup_pass", txt_signup_pass.Text);
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Registration Success..')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("Error during Registration: " + ex.Message);
            }
            finally
            {
                if (con.State == ConnectionState.Open)
                    con.Close();
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgotpass.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}