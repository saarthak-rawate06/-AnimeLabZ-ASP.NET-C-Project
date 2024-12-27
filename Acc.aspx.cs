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
    public partial class Acc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string un = Request.QueryString["name"];
                lbluname7.Text = un;

            }



        }

        protected void sbtbtn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["manhwa"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            { 

            con.Open();
            SqlCommand comm = new SqlCommand("select* from [create] where username=@username and password=@password", con);
            comm.Parameters.AddWithValue("@username", lbluname7.Text);
            comm.Parameters.AddWithValue("@password", txtpass.Text);
            SqlDataReader sra = comm.ExecuteReader();
            if (sra.HasRows)
            {
                    lblinfo.Text = "";
                while (sra.Read())
                {
                    lblname.Text = sra.GetValue(2).ToString();
                    lblsname.Text = sra.GetValue(3).ToString();
                    lblmob.Text = sra.GetValue(4).ToString();
                    lblemail.Text = sra.GetValue(5).ToString();
                    lbladd.Text = sra.GetValue(6).ToString();
                }
            }
            else
            { lblinfo.Text = "Entered Password Is Invalid!!"; }
            con.Close();
        }
        }

        protected void list1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string si = list1.SelectedValue;
            switch (si)
            {
                case "Home":
                    Response.Redirect("Homepage.aspx?U=" + lbluname7.Text);
                    break;
               

                default:
                    break;

            }
        }

        protected void list2_SelectedIndexChanged(object sender, EventArgs e)
        {
            string si = list2.SelectedValue;
            switch (si)
            {
                case "Solo Leveling":
                    Response.Redirect("buysolo.aspx?name=" + lbluname7.Text);
                    break;
                case "Love Rebooted":
                    Response.Redirect("buyreboot.aspx?name=" + lbluname7.Text);
                    break;
                case "Not A Lady Anymore":
                    Response.Redirect("buynot.aspx?name=" + lbluname7.Text);
                    break;
                case "Omniscient Reader's Viewpoint":
                    Response.Redirect("buyReader's.aspx?name=" + lbluname7.Text);
                    break;
                case "Refuse the attachment":
                    Response.Redirect("buyrefuse.aspx?name=" + lbluname7.Text);
                    break;
                case "Overgeared":
                    Response.Redirect("buyovergeared.aspx?name=" + lbluname7.Text);
                    break;
                case "Mercenary Enrollment":
                    Response.Redirect("buyenroll.aspx?name=" + lbluname7.Text);
                    break;
                case "Chronicles Of Heavenly Demons":
                    Response.Redirect("buydemons.aspx?name=" + lbluname7.Text);
                    break;
                default:
                    break;

            }
        }

        protected void txtuname_TextChanged(object sender, EventArgs e)
        {

        }
    }
}