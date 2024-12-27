using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimeX_Project
{
    public partial class Signup_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sbtbtn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["manhwa"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                // Convert input values to lower case
                string name = txtname.Text.ToLower();
                string surname = txtsname.Text.ToLower();
                string email = txtemail.Text.ToLower();
                string username = txtuname.Text.ToLower();
                string mobile = txtmob.Text;

                string checkDetailsQuery = "SELECT COUNT(*) FROM [create] WHERE LOWER(name)=@name AND LOWER(surname)=@surname AND mobile=@mobile AND LOWER(email)=@email";
                SqlCommand checkDetailsCmd = new SqlCommand(checkDetailsQuery, con);
                checkDetailsCmd.Parameters.AddWithValue("@name", name);
                checkDetailsCmd.Parameters.AddWithValue("@surname", surname);
                checkDetailsCmd.Parameters.AddWithValue("@mobile", mobile);
                checkDetailsCmd.Parameters.AddWithValue("@email", email);

                con.Open();
                int userExists = Convert.ToInt32(checkDetailsCmd.ExecuteScalar().ToString());

                if (userExists > 0)
                {
                    lblinfo.Text = "User already exists with these details.";
                }
                else
                {
                    string checkUsernameQuery = "SELECT COUNT(*) FROM [create] WHERE LOWER(username)=@username";
                    SqlCommand checkUsernameCmd = new SqlCommand(checkUsernameQuery, con);
                    checkUsernameCmd.Parameters.AddWithValue("@username", username);

                    int usernameExists = Convert.ToInt32(checkUsernameCmd.ExecuteScalar().ToString());

                    if (usernameExists > 0)
                    {
                        lblinfo.Text = "Username already in use.";
                    }
                    else
                    {
                        // Check if mobile number is already in use
                        string checkMobileQuery = "SELECT COUNT(*) FROM [create] WHERE mobile=@mobile";
                        SqlCommand checkMobileCmd = new SqlCommand(checkMobileQuery, con);
                        checkMobileCmd.Parameters.AddWithValue("@mobile", mobile);

                        int mobileExists = Convert.ToInt32(checkMobileCmd.ExecuteScalar().ToString());

                        if (mobileExists > 0)
                        {
                            lblinfo.Text = "Mobile number is already in use with another account.";
                        }
                        else
                        {
                            // Insert new user into the database
                            string query = "INSERT INTO [create] (username, password, name, surname, mobile, email, address) " +
                                           "VALUES (@username, @password, @name, @surname, @mobile, @email, @address)";
                            SqlCommand cmd = new SqlCommand(query, con);

                            cmd.Parameters.AddWithValue("@username", txtuname.Text);
                            cmd.Parameters.AddWithValue("@password", txtpass.Text);
                            cmd.Parameters.AddWithValue("@name", txtname.Text);
                            cmd.Parameters.AddWithValue("@surname", txtsname.Text);
                            cmd.Parameters.AddWithValue("@mobile", txtmob.Text);
                            cmd.Parameters.AddWithValue("@email", txtemail.Text);
                            cmd.Parameters.AddWithValue("@address", txtadd.Text);

                            try
                            {
                                cmd.ExecuteNonQuery();
                                lblinfo.Text = "User registered successfully.";

                                // Redirect to Login.aspx after successful registration
                                Response.Redirect("Login.aspx");
                            }
                            catch (Exception err)
                            {
                                lblinfo.Text = err.Message;
                            }
                        }
                    }
                }

                con.Close();
            }



        }
    }
}