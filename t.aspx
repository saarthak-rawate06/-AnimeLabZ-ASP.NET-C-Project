<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="t.aspx.cs" Inherits="AnimeX_Project.t" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="img.css" rel="stylesheet" />
<style type="text/css">
    .auto-style1 {
        height: 67px;
        width: 71px;
    }

    .auto-style2 {
        width: 67px;
        height: 67px;
    }

    .auto-style3 {
        width: 100%;
    }

    .auto-style9 {
        width: 74%;
    }

    .auto-style7 {
        width: 937px;
    }
    .auto-style5 {
        width: 108px;
    }
    .auto-style8 {
        margin-right: 17px;
    }

    .auto-style10 {
        width: 702px;
    }
    .auto-style11 {
        height: 327px;
        width: 244px;
    }
    .auto-style12 {
        width: 250px;
        height: 289px;
    }
    .auto-style13 {
        height: 289px;
    }
    .auto-style14 {
        width: 702px;
        height: 18px;
    }

    </style>
</head>
<body style="background-image: none; background-color: #000000;">
    <form id="form1" runat="server">
                        <div style="padding: 1px; border: thin groove #808080"; margin-left:"400px"; margin-right:"400px"; padding:10px;  background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face'; align:center">
                    <br />
        <img alt="" class="auto-style1" src="logo2.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcreate" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="XX-Large" ForeColor="White" Text="AnimeLabZ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style2" src="gojo.png" /></div>
        <hr style="background-color: #666666" />
      <br /> 
          
             <div style="background-color: #049B9F" > 
            
             <table class="auto-style3">
                 <tr>
                     <td>
                         <table class="auto-style9">
                             <tr>
                                 <td>
                                     <asp:DropDownList ID="list1" runat="server" BackColor="Black" CssClass="auto-style1" Font-Bold="True" Font-Names="Bell MT" Font-Underline="False" ForeColor="#049A9E" Height="31px" ValidateRequestMode="Enabled" Width="94px" style="border-width:2px" >
                 <asp:ListItem>Home</asp:ListItem>
                 <asp:ListItem>Account</asp:ListItem>
                 <asp:ListItem>Orders</asp:ListItem>
                         <asp:ListItem>Cart</asp:ListItem>
            </asp:DropDownList>
                                 </td>
                             </tr>
                         </table>
                     </td>
                     <td style="text-align:center" class="auto-style7">
            <asp:Label ID="lblhome0" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="40pt" ForeColor="White" Text="Buy"></asp:Label>
                     </td>
                     <td style="align-content:last baseline" class="auto-style5">
             <asp:DropDownList ID="list2" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="#049B9F" Height="32px"  Width="190px" CssClass="auto-style8" DataSourceID="sq2" DataTextField="b_name" DataValueField="b_name">
                 <asp:ListItem>Available Manga Books</asp:ListItem>
             </asp:DropDownList>
                         <asp:SqlDataSource ID="sq2" runat="server" ConnectionString="<%$ ConnectionStrings:b_m %>" ProviderName="<%$ ConnectionStrings:b_m.ProviderName %>" SelectCommand="SELECT [b_name] FROM [B_avail]"></asp:SqlDataSource>
                     </td>
                 </tr>
             </table>
        </div><br />
        <div>
            <table class="auto-style3" border="1">
                <tr>
                    <td class="auto-style12">

                        <img alt="" class="auto-style11" src="solo%20leveling.jpg" style="padding-right: 5px"/>
                    </td>
                    <td class="auto-style13">
                        <table class="auto-style3" border="1">
                            <tr>
                                <td style="text-align:center" class="auto-style10">  <asp:Label ID="lbl1" runat="server" Text="Solo Leveling" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label2" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">
     Solo Leveling manga depicts Jinwoo's journey from a weak hunter to a formidable force, empowered by a unique leveling system. He battles monstrous creatures to protect humanity, unveiling mysteries and gaining allies along the way.
 </asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label3" runat="server" Text="Author: Chugong" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label4" runat="server" Text="Release: 2018" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label5" runat="server" Text="Chapters:174" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label></td></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt" ForeColor="#FFCCFF" Text="Available Quantity:"></asp:Label>
                                    <asp:TextBox ID="qty1" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10"><asp:Label ID="Label7" runat="server" Text="Enter Quantity:" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                                    <asp:TextBox ID="addqty" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10"><asp:Label ID="Label9" runat="server" Text="Shipping Address:" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                                    <asp:TextBox ID="qty2" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10"><asp:Label ID="Label10" runat="server" Text="Mobile Number:" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                                    <asp:TextBox ID="qty3" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10"><asp:Button ID="buybtn1" runat="server" Text="Place Order" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn1_Click" />&nbsp; </td>
                            </tr>
                            <tr>
                                <td class="auto-style14"> <asp:Label ID="Label8" runat="server" Text="Note:Your ordered book will be delivered 5 days after ordering" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            </div>
        <asp:Label ID="lblinfo" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
