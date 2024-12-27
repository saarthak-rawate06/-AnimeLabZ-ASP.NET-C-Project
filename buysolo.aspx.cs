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
    public partial class buysolo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                string un = Request.QueryString["name"];
                lbluname1.Text = un;

                
            }
            if (!IsPostBack)
            {
                addqty.Text = "0";
            }
            string n = lbl1.Text;
            string connectionString = WebConfigurationManager.ConnectionStrings["b_m"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionString);
            con.Open();
            SqlCommand comm = new SqlCommand("select qty from B_avail where b_name=@b_name", con);
            comm.Parameters.AddWithValue("@b_name", n);
            SqlDataReader srd = comm.ExecuteReader();
            while (srd.Read())
            {
                qty1.Text = srd.GetValue(0).ToString();
            }
            con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int q = int.Parse(addqty.Text);
            q += 1;
            addqty.Text = q.ToString();
            ttlp.Text = ("Rs." + q * 1500).ToString();
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            int n = int.Parse(addqty.Text);
            if (n > 0)
            {
                n -= 1;
                addqty.Text = n.ToString();
                ttlp.Text = ("Rs." + n * 1500).ToString();
            }
        }

        protected void buybtn1_Click(object sender, EventArgs e)
        {
            string l = lbl1.Text;
            int aq = int.Parse(addqty.Text);
            string shippingaddress = qty2.Text;
            string mobile = qty3.Text;

            string connectionString = WebConfigurationManager.ConnectionStrings["b_m"].ConnectionString;
            if (aq == 0)
            {
                lblinfo.Text = "Quantity cannot be 0!";
                return;
            }
            SqlConnection con = new SqlConnection(connectionString);
            {
                con.Open();

                String checkQuery = "Select Count(*) from [Order] where BookName=@BookName and ShippingAddress=@ShippingAddress and Mobile=@Mobile";
                SqlCommand checkCmd = new SqlCommand(checkQuery, con);
                checkCmd.Parameters.AddWithValue("@BookName", l);
                checkCmd.Parameters.AddWithValue("@ShippingAddress", shippingaddress);
                checkCmd.Parameters.AddWithValue("@Mobile", mobile);
                int exoc = (int)checkCmd.ExecuteScalar();
                if (exoc > 0)
                {
                    lblinfo.Text = "This order already exists and cannot be placed again!!";
                    return;
                }

                int Id;
                using (SqlConnection con1 = new SqlConnection(connectionString))
                {
                    con1.Open();
                    SqlCommand idcmd = new SqlCommand("Select MAX(Id) from [Order]", con1);
                    object result = idcmd.ExecuteScalar();
                    if (result != DBNull.Value)
                    {
                        Id = Convert.ToInt32(idcmd.ExecuteScalar()) + 1;
                    }
                    else
                    {
                        Id = 1;
                    }
                }

                using (SqlConnection con2 = new SqlConnection(connectionString))
                {
                    con2.Open();
                    string query = "Insert into [Order] (Id,BookName,Quantity,ShippingAddress,Mobile)" + "Values(@Id,@BookName,@Quantity,@ShippingAddress,@Mobile)";
                    SqlCommand cmd = new SqlCommand(query, con2);
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@BookName", l);
                    cmd.Parameters.AddWithValue("@Quantity", aq);
                    cmd.Parameters.AddWithValue("@ShippingAddress", shippingaddress);
                    cmd.Parameters.AddWithValue("@Mobile", mobile);
                    try
                    {

                        cmd.ExecuteNonQuery();
                        lblinfo.Text = "Your Order Has Been Placed Successfully!!";

                    }
                    catch (Exception err)
                    {
                        lblinfo.Text = err.Message;
                    }
                }

                using (SqlConnection con3 = new SqlConnection(connectionString))
                {
                    con3.Open();
                    string uquery = "Update B_avail SET qty=qty-" + aq + "where b_name=@b_name";
                    SqlCommand cmd = new SqlCommand(uquery, con3);
                    cmd.Parameters.AddWithValue("@b_name", l);
                    try
                    {

                        cmd.ExecuteNonQuery();


                    }
                    catch (Exception err)
                    {
                        lblinfo.Text = err.Message;
                    }
                }
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

        protected void list1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string si = list1.SelectedValue;
            switch (si)
            {
                case "Home":
                    Response.Redirect("Homepage.aspx?U="+lbluname1.Text);
                    break;
                case "Account":
             
                default:
                    break;

            }
        }
    }
}