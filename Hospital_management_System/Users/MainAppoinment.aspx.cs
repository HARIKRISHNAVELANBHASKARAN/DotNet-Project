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
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id1 = 0;
                string str1 = "SELECT ISNULL(MAX(AID), 0) AS AID FROM AppontTab";
                da = new SqlDataAdapter(str1, con);
                DataTable dt = new DataTable();
                da.Fill(dt);

                id1 = Convert.ToInt32(dt.Rows[0]["AID"]);

                lbl_Appontment_no.Text = (id1 + 1).ToString();
                lbl_Appontment_no.Visible = false;

            }
        }

        protected void btn_main_appointment_Submit_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string str = "INSERT INTO AppontTab (AID, Section, Name, Gender, Mobile, Email, Date) VALUES (@AID, @Section, @Name, @Gender, @Mobile, @Email, @Date)";
                cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@AID", Convert.ToInt32(lbl_Appontment_no.Text));
                cmd.Parameters.AddWithValue("@Section", DropDownList_Section.SelectedValue);
                cmd.Parameters.AddWithValue("@Name", txt_Appoint_name.Text);
                cmd.Parameters.AddWithValue("@Gender", DropDownList_gender.SelectedValue);
                cmd.Parameters.AddWithValue("@Mobile", txt_Apoint_Mobile.Text);
                cmd.Parameters.AddWithValue("@Email", txt_Apoint_Email.Text);
                cmd.Parameters.AddWithValue("@Date", Convert.ToDateTime(datepicke.Text));
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Appointment Saved')</script>");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}