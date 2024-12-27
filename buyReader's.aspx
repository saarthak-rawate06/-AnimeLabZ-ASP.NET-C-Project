<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buyReader's.aspx.cs" Inherits="AnimeX_Project.buyReader_s" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                                         <asp:ListItem>Buy</asp:ListItem>
                 <asp:ListItem>Home</asp:ListItem>
            </asp:DropDownList>
                                 </td>
                             </tr>
                         </table>
                     </td>
                     <td style="text-align:center" class="auto-style7">
            <asp:Label ID="lblhome0" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="40pt" ForeColor="White" Text="Buy"></asp:Label>
                     </td>
                     <td style="align-content:last baseline" class="auto-style5">
             <asp:DropDownList ID="list2" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="#049B9F" Height="32px"  Width="190px" CssClass="auto-style8" DataSourceID="sq2" DataTextField="b_name" DataValueField="b_name" AutoPostBack="True" OnSelectedIndexChanged="list2_SelectedIndexChanged">
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

                        <img alt="" class="auto-style11" src="icons/omniscient%20reader's%20viewpoint.jpg" style="padding-right: 5px" aria-grabbed="false"/>
                    </td>
                    <td class="auto-style13">
                        <table class="auto-style3" border="1">
                            <tr>
                                <td style="text-align:center" class="auto-style10">  <asp:Label ID="lbl1" runat="server" Text="Omniscient Reader's Viewpoint" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label2" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">   Omniscient Reader&#39;s Viewpoint manga follows Dokja, who finds himself living in the world of a novel he once read. With his knowledge, he navigates through events, influencing the story and unraveling mysteries to shape its outcome.</asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label3" runat="server" Text="Author: Sing Song" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label4" runat="server" Text="Release: 2020" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label5" runat="server" Text="Chapters: 120" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td></td>
                            </tr>
                            <tr>
                                <td class="auto-style10"> <asp:Label ID="Label11" runat="server" Text="Price: Rs.1000/-" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="Label9" runat="server" Text="Shipping Address:" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                                    <asp:TextBox ID="qty2" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="qty2" ErrorMessage="*Please enter your address!!" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="Label10" runat="server" Text="Mobile Number:" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                                    <asp:TextBox ID="qty3" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="qty3" ErrorMessage="*Please enter your mobile number!!" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt" ForeColor="#FFCCFF" Text="Available Quantity:"></asp:Label>
                                    <asp:TextBox ID="qty1" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px" ForeColor="Black"></asp:TextBox>
                                </td>
                            </tr>
                 <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
 <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
 <ContentTemplate>
                            <tr>
                                <td class="auto-style10"><asp:Label ID="Label7" runat="server" Text="Select Quantity:" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                                   
                                        <asp:Button ID="btnsub" runat="server" Text="-" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="btnsub_Click" style="width: 18px" Height="29px" Width="25px" /><asp:TextBox ID="addqty" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px" Height="16px" Width="16px" Text="0" ReadOnly="True" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium">0</asp:TextBox><asp:Button ID="btnadd" runat="server" Text="+" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="Button2_Click" />
                                   
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style10"><asp:Label ID="Label12" runat="server" Text="Total Price:" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                                    <asp:TextBox ID="ttlp" runat="server" BackColor="#FFCCFF" BorderColor="White" BorderStyle="Groove" BorderWidth="1px" ReadOnly="True" Font-Bold="True" Font-Names="Bell MT" Font-Size="Large" Height="19px" Width="89px"></asp:TextBox>
                                </td>
                            </tr>
      
                </ContentTemplate>
                            <tr>
                                <td class="auto-style10"><asp:Button ID="buybtn1" runat="server" Text="Place Order" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn1_Click" style="height: 29px" />&nbsp; </td>
                            </tr>
                            <tr>
                                <td class="auto-style14"> <asp:Label ID="Label8" runat="server" Text="Note:Your ordered book will be delivered 5 days after ordering and Payment Mode is Cash OnDelivery[COD]" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            </div>
        <asp:Label ID="lblinfo" runat="server" Font-Bold="True" ForeColor="#FDCAFD" Font-Names="Bell MT" Font-Size="XX-Large"></asp:Label>
        <br />
        <asp:Label ID="lbluname1" runat="server" Font-Bold="True" ForeColor="#FDCAFD" Font-Names="Bell MT" Font-Size="XX-Large" Visible="False"></asp:Label>
    </form>
</body>
</html>
