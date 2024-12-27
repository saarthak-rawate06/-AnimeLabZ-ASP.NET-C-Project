using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimeX_Project
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string un = Request.QueryString["U"];
                lbluname.Text = un;

             

            }

          
               

            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void list1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            string si = list1.SelectedValue;
            switch (si)
            {
                case "Account":
                    Response.Redirect("Acc.aspx?name="+lbluname.Text);
                    break;
                case "Orders":
                    Response.Redirect("Orders.aspx?name=" + lbluname.Text);
                    break;
                case "Login":
                    Response.Redirect("Login.aspx");
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
                    Response.Redirect("buysolo.aspx?name=" + lbluname.Text);
                    break;
                case "Love Rebooted":
                    Response.Redirect("buyreboot.aspx?name=" + lbluname.Text);
                    break;
                case "Not A Lady Anymore":
                    Response.Redirect("buynot.aspx?name=" + lbluname.Text);
                    break;
                case "Omniscient Reader's Viewpoint":
                    Response.Redirect("buyReader's.aspx?name=" + lbluname.Text);
                    break;
                case "Refuse the attachment":
                    Response.Redirect("buyrefuse.aspx?name=" + lbluname.Text);
                    break;
                case "Overgeared":
                    Response.Redirect("buyovergeared.aspx?name=" + lbluname.Text);
                    break;
                case "Mercenary Enrollment":
                    Response.Redirect("buyenroll.aspx?name=" + lbluname.Text);
                    break;
                case "Chronicles Of Heavenly Demons":
                    Response.Redirect("buydemons.aspx?name=" + lbluname.Text);
                    break;
                default:
                    break;
            }
        }

        protected void buybtn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("buysolo.aspx?name="+lbluname.Text);
        }

        protected void buybtn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyreboot.aspx?name=" + lbluname.Text);
        }

        protected void buybtn3_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyenroll.aspx?name=" + lbluname.Text);
        }

        protected void buybtn4_Click(object sender, EventArgs e)
        {
            Response.Redirect("buynot.aspx?name=" + lbluname.Text);
        }

        protected void buybtn5_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyReader's.aspx?name=" + lbluname.Text);
        }

        protected void buybtn6_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyrefuse.aspx?name=" + lbluname.Text);
        }

        protected void buybtn7_Click(object sender, EventArgs e)
        {
            Response.Redirect("buydemons.aspx?name=" + lbluname.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("buyovergeared.aspx?name=" + lbluname.Text);
        }
    }
}