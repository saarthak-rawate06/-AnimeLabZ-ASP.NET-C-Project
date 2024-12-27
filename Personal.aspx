<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal.aspx.cs" Inherits="AnimeX_Project.Signup_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
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
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 26px;
        }
        </style>
</head>
<body style="background-color: #000000; background-image: url('IMG8.png')">
    <form id="form1" runat="server">
    <div style="padding: 1px; border: thin groove #808080"; margin-left:"400px"; margin-right:"400px"; padding:10px;  background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face';">
        <p style="color: #FFFFFF; font-family: 'Baskerville Old Face'; font-size: xx-large;">
        <img alt="" class="auto-style1" src="logo2.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Welcome</span> <span class="auto-style">To</span> <span class="auto-style2">AnimeLabZ</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="auto-style2" src="gojo.png" /></p>
        </div><hr />
        <p style="color: #FFFFFF; font-family: 'Baskerville Old Face'; font-size: xx-large;">
        </p>
        <div style="border: thin groove #FFFFFF; margin-left: 400px; margin-right: 400px; padding: 10px; background-color: #1790A6; color: #FFFFFF; font-family: 'baskerville Old Face'; width: 410px;" align="center" >
            <asp:Label ID="lbl6" runat="server" Text="Add Personal Details" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label>
            </br><table class="auto-style3">
                <tr>
                    <td>
            <asp:Label ID="lbl1" runat="server" Text="Enter Your Name:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label></td>
                    <td> <asp:TextBox ID="txtname" runat="server" BorderColor="Black" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
             <asp:Label ID="lbl2" runat="server" Text="Enter Your Surname:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label></td>
                    <td> <asp:TextBox ID="txtsname" runat="server" BorderColor="Black" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lbl4" runat="server" Text="Enter Your Mobile:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label>
                        
                    </td>
                    <td> <asp:TextBox ID="txtmob" runat="server" BorderColor="Black" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lbl5" runat="server" Text="Enter Your Email:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label></td>
                    <td> <asp:TextBox ID="txtemail" runat="server" BorderColor="Black" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lbl7" runat="server" Text="Enter Your Address:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label></td>
                    <td> <asp:TextBox ID="txtadd" runat="server" BorderColor="Black" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
            <asp:Label ID="lbl8" runat="server" Text="Create username:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label></td>
                    <td class="auto-style4"> <asp:TextBox ID="txtuname" runat="server" BorderColor="Black" BorderStyle="Ridge"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lbl9" runat="server" Text="Create password:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label></td>
                    <td> <asp:TextBox ID="txtpass" runat="server" BorderColor="Black" BorderStyle="Ridge" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
            <asp:Label ID="lbl10" runat="server" Text="Re-enter password:" ForeColor="White" Font-Bold="True" Font-Names="Bell MT"></asp:Label></td>
                    <td> <asp:TextBox ID="txtrepass" runat="server" BorderColor="Black" BorderStyle="Ridge" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </table></br>
            <asp:Button ID="sbtbtn" runat="server" BorderColor="Black" BorderStyle="Groove" Text="Submit" Font-Bold="True" Font-Names="Baskerville Old Face" Height="23px" Width="70px" OnClick="sbtbtn_Click"/>
        </div>
        <br />
        <br />
        <br />
        <asp:Label ID="lblinfo" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="Red"></asp:Label>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="*Please enter your name" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtadd" ErrorMessage="*Please enter your address" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsname" ErrorMessage="*Please enter your surname" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtuname" ErrorMessage="*Please create your username" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmob" ErrorMessage="*Please enter your mobile number" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtname" ErrorMessage="*Please create your password" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="*Please enter your Email" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtrepass" ErrorMessage="*passwords doesn't match with each other!!" Font-Bold="True" Font-Names="Bell MT" ForeColor="Red"></asp:CompareValidator>
        <br />
&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="*Please enter valid email address" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </form>
</body>
</html>
