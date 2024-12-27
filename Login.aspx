<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AnimeX_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 64px;
            width: 73px;
        }
    </style>
</head>
<body style="background-image: url('IMG8.png')">
    <form id="form1" runat="server">
                                                  <div style="padding: 1px; border: thin groove #808080"; margin-left:"400px"; margin-right:"400px"; padding:10px;  background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face'; align:center">
                    <br />
        <img alt="" class="auto-style1" src="logo2.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblcreate" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="35" ForeColor="White" Text="AnimeLabZ"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style2" src="gojo.png" style="position: absolute; top: 25px; right: 5px" /></div>
         <hr style="background-color: #666666" />
       
       
       
        <br />
        <br />
        <br />
        <br />
        <br />
       
       
       
        <div style="border: thin groove #FFFFFF; margin-left: 400px; margin-right: 400px; padding: 10px; background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face';" align="center" >
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" ForeColor="White" Text="LOGIN"></asp:Label>
            <br /></br>
            <asp:Label ID="lbluname" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" ForeColor="White" Text="Username: "></asp:Label>
            <asp:TextBox ID="txtuname" runat="server" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" Font-Strikeout="False"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="lbluname0" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" ForeColor="White" Text="Password:"></asp:Label>
&nbsp;<asp:TextBox ID="txtpass" runat="server" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" Font-Strikeout="False" CausesValidation="True" TextMode="Password" ValidateRequestMode="Disabled"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="lgbtn" runat="server" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" OnClick="lgbtn_Click" Text="Login" />
            <br />
  
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
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="#0066FF" NavigateUrl="~/Personal.aspx">Don&#39;t have an account, register yourself!!</asp:HyperLink>
        </p>
        <p>
            <asp:Label ID="lblinfo" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" ForeColor="Red"></asp:Label>
        </p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" ErrorMessage="*Please enter your username" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="*Please enter your password" ForeColor="Red"></asp:RequiredFieldValidator>
    </form>
</body>
</html>
