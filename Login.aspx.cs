using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Collections;

namespace AnimeX_Project
{
    public partial class Login : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["manhwa"].ConnectionString;
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgbtn_Click(object sender, EventArgs e)
        {
            string u = txtuname.Text;
            string connectionString = WebConfigurationManager.ConnectionStrings["manhwa"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string checkUserQuery = "SELECT COUNT(*) FROM [create] WHERE username=@username";
                SqlCommand checkUserCmd = new SqlCommand(checkUserQuery, con);
                checkUserCmd.Parameters.AddWithValue("@username", txtuname.Text);

                con.Open();
                int userExists = Convert.ToInt32(checkUserCmd.ExecuteScalar().ToString());

                if (userExists == 0)
                {
                    lblinfo.Text = "You don't have an account. Please register yourself.";
                }
                else
                {
                    string checkPasswordQuery = "SELECT COUNT(*) FROM [create] WHERE username=@username AND password=@password";
                    SqlCommand checkPasswordCmd = new SqlCommand(checkPasswordQuery, con);
                    checkPasswordCmd.Parameters.AddWithValue("@username", txtuname.Text);
                    checkPasswordCmd.Parameters.AddWithValue("@password", txtpass.Text);

                    int temp = Convert.ToInt32(checkPasswordCmd.ExecuteScalar().ToString());

                    if (temp == 1)
                    {
                        // Clear error message
                        lblinfo.Text = "";

                        // Redirect to Homepage

                        Response.Redirect("Homepage.aspx?U=" + u);
                    }
                    else
                    {
                        lblinfo.Text = "Username or password is invalid";
                    }
                }

                con.Close();
                
            }

        }
    }
}