using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AnimeX_Project
{
    public partial class trial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void list1_SelectedIndexChanged(object sender, EventArgs e)
        {
           string si=list1.SelectedValue;
            switch (si) 
            {
                case "AccountDetails":
                    Response.Redirect("Accountdetails.aspx");
                    break;
                case "Orders":
                    Response.Redirect("Orders.aspx");
                    break;
                case "Cart":
                    Response.Redirect("Orders.aspx");
                    break;
                
                default:
                    break;

            }
        }
    }
}