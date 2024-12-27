<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="create.aspx.cs" Inherits="AnimeX_Project.signup_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 71px;
            height: 64px;
        }
        .auto-style2 {
            width: 63px;
            height: 67px;
        }
        </style>
</head>
<body style="background-image: url('IMG8.png')">
    <form id="form1" runat="server">
        <div style="padding: 1px; border: thin groove #808080"; margin-left:"400px"; margin-right:"400px"; padding:10px;  background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face';" align="center">

        <img alt="" class="auto-style1" src="logo2.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcreate" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="XX-Large" ForeColor="White" Text="Create An Account"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style2" src="gojo.png" /></div>
        <hr style="background-color: #666666" />
       
       
       
        <br />
        <br />
        <br />
        <br />
        <br />
       
       
       
        <div style="border: thin groove #FFFFFF; margin-left: 400px; margin-right: 400px; padding: 10px; background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face';" align="center" >
  
            <br />
            <asp:Label ID="lbluname" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" ForeColor="White" Text="Username:"></asp:Label>
            <asp:TextBox ID="txtuname" runat="server" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" Font-Strikeout="False"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="lbluname0" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" ForeColor="White" Text="Password:"></asp:Label>
&nbsp;<asp:TextBox ID="txtpass" runat="server" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" Font-Strikeout="False" CausesValidation="True" TextMode="Password" ValidateRequestMode="Disabled"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="cbtn" runat="server" BorderColor="#999999" BorderStyle="Ridge" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" Height="25px" Text="Create account" Width="134px" OnClick="cbtn_Click" />
  
           </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="lblinfo" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" ForeColor="Red"></asp:Label>
        </p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="*Please enter your username" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="*Please enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
