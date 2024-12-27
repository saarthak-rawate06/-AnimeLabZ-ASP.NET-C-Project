using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace AnimeX_Project
{
    public partial class signup_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cbtn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["manhwa"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            string query = "Insert Into user1 Values(@username,@password)";
            SqlCommand cmd = new SqlCommand(query, con);


            cmd.Parameters.AddWithValue("@username", txtuname.Text);
            cmd.Parameters.AddWithValue("@password", txtpass.Text);
           

            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblinfo.Text = "Account Created";
                con.Close();
            }
            catch (Exception err)
            {
                lblinfo.Text = err.Message;

            }
            Response.Redirect("Login.aspx");
        }
    }
}
