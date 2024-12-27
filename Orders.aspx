<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="AnimeX_Project.Orders" %>

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

    </style>
</head>
<body style="background-image: none; background-color: #000000;">
    <form id="form1" runat="server">
                                               <div style="padding: 1px; border: thin groove #808080"; margin-left:"400px"; margin-right:"400px"; padding:10px;  background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face'; align:center">
                    <br />
        <img alt="" class="auto-style1" src="logo2.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcreate" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="35" ForeColor="White" Text="AnimeLabZ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style2" src="gojo.png" style="position: absolute; top: 25px; right: 5px" /></div>
        <hr style="background-color: #666666" />
      <br /> 
          
             <div style="background-color: #049B9F" > 
            
             <table class="auto-style3">
                 <tr>
                     <td>
                         <table class="auto-style9">
                             <tr>
                                 <td>
                                     <asp:DropDownList ID="list1" runat="server" BackColor="Black" CssClass="auto-style1" Font-Bold="True" Font-Names="Bell MT" Font-Underline="False" ForeColor="#049A9E" Height="31px" ValidateRequestMode="Enabled" Width="94px" style="border-width:2px" AutoPostBack="True" OnSelectedIndexChanged="list1_SelectedIndexChanged" >
                                         <asp:ListItem>Orders</asp:ListItem>
                 <asp:ListItem>Home</asp:ListItem>
            </asp:DropDownList>
                                 </td>
                             </tr>
                         </table>
                     </td>
                     <td style="text-align:center" class="auto-style7">
            <asp:Label ID="lblhome0" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="40pt" ForeColor="White" Text="Ordered"></asp:Label>
                     </td>
                     <td style="align-content:last baseline" class="auto-style5">
             <asp:DropDownList ID="list2" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="#049B9F" Height="32px"  Width="190px" CssClass="auto-style8" DataSourceID="s3" DataTextField="b_name" DataValueField="b_name" AutoPostBack="True" OnSelectedIndexChanged="list2_SelectedIndexChanged">
                 <asp:ListItem>Available Manga Books</asp:ListItem>
             </asp:DropDownList>
                         <asp:SqlDataSource ID="s3" runat="server" ConnectionString="<%$ ConnectionStrings:am %>" SelectCommand="SELECT [b_name] FROM [B_avail]"></asp:SqlDataSource>
                     </td>
                 </tr>
             </table>
        </div><br />
      <div>
          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderColor="White" BorderStyle="Groove" BorderWidth="1px" DataKeyNames="Id" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Names="Bell MT" ForeColor="#049B9F">
              <Columns>
                  <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                  <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
                  <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                  <asp:BoundField DataField="ShippingAddress" HeaderText="ShippingAddress" SortExpression="ShippingAddress" />
                  <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
              </Columns>
              <EditRowStyle BackColor="#049A9E" BorderColor="White" BorderStyle="Groove" Font-Bold="True" Font-Names="Bell MT" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:am %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        </div></br>
        <div>
            <table class="auto-style3">
                <tr>
                    <td><asp:Label ID="lbloid" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Enter Order Id:</asp:Label>
                         </td>
                    <td> <asp:TextBox ID="txtid" runat="server" BorderColor="Black" BorderStyle="Ridge" Width="137px"></asp:TextBox>
                       </td>
                </tr>
            </table>
            </div></br>
                    <asp:Button ID="sbtbtn" runat="server" BorderColor="Black" BorderStyle="Groove" Text="Cancel Order" Font-Bold="True" Font-Names="Baskerville Old Face" Height="23px" Width="96px" OnClick="sbtbtn_Click"/>
                       
                                               <br />
                                               <br />
        <asp:Label ID="lblinfo" runat="server" Font-Bold="True" ForeColor="#FDCAFD" Font-Names="Bell MT" Font-Size="XX-Large"></asp:Label>
                       
                                               <br />
        <asp:Label ID="lbluname1" runat="server" Font-Bold="True" ForeColor="#FDCAFD" Font-Names="Bell MT" Font-Size="XX-Large" Visible="False"></asp:Label>
                       
    </form>
</body>
</html>
