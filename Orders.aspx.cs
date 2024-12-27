using Microsoft.Ajax.Utilities;
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
    public partial class Orders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string un = Request.QueryString["name"];
                lbluname1.Text = un;

            }
            }

            protected void sbtbtn_Click(object sender, EventArgs e)
        {
            string connectionString =WebConfigurationManager.ConnectionStrings["b_m"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            string query = "Delete From [Order] Where Id=@Id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Id", txtid.Text);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblinfo.Text = "Order Cancelled!!";
                con.Close();
            }
            catch (Exception err)
            {
                lblinfo.Text = err.Message;
            }


        }

        protected void list1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string si = list1.SelectedValue;
            switch (si)
            {
                case "Home":
                    Response.Redirect("Homepage.aspx?U=" + lbluname1.Text);
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
                    Response.Redirect("buysolo.aspx?name=" + lbluname1.Text);
                    break;
                case "Love Rebooted":
                    Response.Redirect("buyreboot.aspx?name=" + lbluname1.Text);
                    break;
                case "Not A Lady Anymore":
                    Response.Redirect("buynot.aspx?name=" + lbluname1.Text);
                    break;
                case "Omniscient Reader's Viewpoint":
                    Response.Redirect("buyReader's.aspx?name=" + lbluname1.Text);
                    break;
                case "Refuse the attachment":
                    Response.Redirect("buyrefuse.aspx?name=" + lbluname1.Text);
                    break;
                case "Overgeared":
                    Response.Redirect("buyovergeared.aspx?name=" + lbluname1.Text);
                    break;
                case "Mercenary Enrollment":
                    Response.Redirect("buyenroll.aspx?name=" + lbluname1.Text);
                    break;
                case "Chronicles Of Heavenly Demons":
                    Response.Redirect("buydemons.aspx?name=" + lbluname1.Text);
                    break;
                default:
                    break;

            }
        }
    }
}