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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btn_login_b_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd;

            try
            {
                con.Open();
                string str1 = "SELECT * FROM UserTab WHERE username=@username AND signup_pass=@signup_pass";
                cmd = new SqlCommand(str1, con);
                cmd.Parameters.AddWithValue("@username", txt_login_username.Text);
                cmd.Parameters.AddWithValue("@signup_pass", txt_login_pass.Text);

                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    Response.Redirect("MainAppoinment.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect username or password')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
            finally
            {
                con.Close();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Forgotpassword.aspx");
        }

        protected void txt_login_username_TextChanged(object sender, EventArgs e)
        {

        }
    }
}