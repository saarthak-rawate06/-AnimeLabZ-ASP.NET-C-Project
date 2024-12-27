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
    public partial class t : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void buybtn1_Click(object sender, EventArgs e)
        {
            string l = lbl1.Text;
            string aq = addqty.Text;
            string shippingaddress = qty2.Text;
            string mobile = qty3.Text;
            int n = int.Parse(aq);
            string connectionString = WebConfigurationManager.ConnectionStrings["b_m"].ConnectionString;
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
                    object result=idcmd.ExecuteScalar();
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
                    SqlCommand cmd=new SqlCommand(query, con2);
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@BookName", l);
                    cmd.Parameters.AddWithValue("@Quantity", aq);
                    cmd.Parameters.AddWithValue("@ShippingAddress", shippingaddress);
                    cmd.Parameters.AddWithValue("@Mobile",mobile);
                    try
                    {
                        
                        cmd.ExecuteNonQuery();
                        lblinfo.Text = "Order Placed!!";
                        
                    }
                    catch (Exception err)
                    {
                        lblinfo.Text = err.Message;
                    }
                }

                using (SqlConnection con3 = new SqlConnection(connectionString))
                {
                    con3.Open();
                    string uquery = "Update B_avail SET qty=qty-" + n + "where b_name=@b_name";
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
    }
}