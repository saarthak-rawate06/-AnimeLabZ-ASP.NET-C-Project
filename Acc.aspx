<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acc.aspx.cs" Inherits="AnimeX_Project.Acc" %>

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

    .auto-style5 {
        width: 108px;
    }
    .auto-style7 {
        width: 679px;
    }
    .auto-style9 {
        width: 74%;
    }

        .auto-style8 {
            margin-right: 17px;
        }

        .auto-style10 {
        width: 181px;
    }

        </style>
</head>
<body style="background-image: none; background-color: #000000;">
    <form id="form1" runat="server">
               <div style="padding: 1px; border: thin groove #808080"; margin-left:"400px"; margin-right:"400px"; padding:10px;  background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face';" align="center">

        <img alt="" class="auto-style1" src="logo2.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcreate" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="XX-Large" ForeColor="White" Text="AnimeLabZ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style2" src="gojo.png" /></div>
        <hr style="background-color: #666666" />
       

         <div style="background-color: #049B9F" > 
            
             <table class="auto-style3">
                 <tr>
                     <td class="auto-style10">
                         <table class="auto-style9">
                             <tr>
                                 <td>
                                     <asp:DropDownList ID="list1" runat="server" BackColor="Black" CssClass="auto-style1" Font-Bold="True" Font-Names="Bell MT" Font-Underline="False" ForeColor="#049A9E" Height="31px" ValidateRequestMode="Enabled" Width="94px" style="border-width:2px" OnSelectedIndexChanged="list1_SelectedIndexChanged" AutoPostBack="True">
                         <asp:ListItem>Account</asp:ListItem>
                 <asp:ListItem>Home</asp:ListItem>
            </asp:DropDownList>
                                 </td>
                             </tr>
                         </table>
                     </td>
                     <td style="text-align:center" class="auto-style7">
            <asp:Label ID="lblhome" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="X-Large" ForeColor="White" Text="Account Details"></asp:Label>
                     </td>
                     <td style="align-content:last baseline" class="auto-style5">
             <asp:DropDownList ID="list2" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="#049B9F" Height="32px"  Width="190px" CssClass="auto-style8" DataSourceID="sq3" DataTextField="b_name" DataValueField="b_name" AutoPostBack="True" OnSelectedIndexChanged="list2_SelectedIndexChanged">
                 <asp:ListItem>Available Manga Books</asp:ListItem>
             </asp:DropDownList>
                         <asp:SqlDataSource ID="sq3" runat="server" ConnectionString="<%$ ConnectionStrings:am %>" ProviderName="<%$ ConnectionStrings:am.ProviderName %>" SelectCommand="SELECT [b_name] FROM [B_avail]"></asp:SqlDataSource>
                     </td>
                 </tr>
             </table>

        </div><br />
        <div>
               <table border="1" class="auto-style3"style="border: thin groove #FFFFFF">
                   <tr>
                       <td><asp:Label ID="lbluname" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Your Username:</asp:Label>
                                 </td>
                       <td> 
        <asp:Label ID="lbluname7" runat="server" Font-Bold="True" ForeColor="#FDCAFD" Font-Names="Bell MT" Font-Size="XX-Large"></asp:Label>
                       </td>
                   </tr>
                   <tr>
                       <td><asp:Label ID="lblpass" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Enter password:</asp:Label>
                                 </td>
                       <td> <asp:TextBox ID="txtpass" runat="server" BorderColor="Black" BorderStyle="Ridge" Width="137px" TextMode="Password"></asp:TextBox>
                       </td>
                   </tr>
                   </table>
            </div>
        </br><div>
            <table class="auto-style3">
                <tr>
                    <td>
            <asp:Button ID="sbtbtn" runat="server" BorderColor="Black" BorderStyle="Groove" Text="Get Details" Font-Bold="True" Font-Names="Baskerville Old Face" Height="23px" Width="84px" OnClick="sbtbtn_Click"/>
                       </td>
                </tr>
            </table>
            </div></br>
        <table class="auto-style3" border="1" style="border: thin groove #FFFFFF">
            <tr>
                <td><asp:Label ID="lbluname0" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Name:</asp:Label>
                                 </td>
                <td><asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large"></asp:Label>
                                 </td>
            </tr>
            <tr>
                <td><asp:Label ID="lbluname1" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Surname:</asp:Label>
                                 </td>
                <td><asp:Label ID="lblsname" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large"></asp:Label>
                                 </td>
            </tr>
            <tr>
                <td><asp:Label ID="lbluname4" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Mobile number:</asp:Label>
                                 </td>
                <td><asp:Label ID="lblmob" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large"></asp:Label>
                                 </td>
            </tr>
            <tr>
                <td><asp:Label ID="lbluname5" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Email:</asp:Label>
                                 </td>
                <td><asp:Label ID="lblemail" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large"></asp:Label>
                                 </td>
            </tr>
            <tr>
                <td><asp:Label ID="lbluname6" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large">Address:</asp:Label>
                                 </td>
                <td><asp:Label ID="lbladd" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large"></asp:Label>
                                 </td>
            </tr>
        </table>
        <div>

        <asp:Label ID="lblinfo" runat="server" Font-Bold="True" ForeColor="#FDCAFD" Font-Names="Bell MT" Font-Size="XX-Large"></asp:Label>

        </div>
    </form>
</body>
</html>
