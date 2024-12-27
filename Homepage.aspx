<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="AnimeX_Project.Homepage" %>

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

        .auto-style4 {
            width: 37px;
            height: 31px;
        }

        .auto-style7 {
            width: 685px;
        }
        .auto-style6 {
            width: 114px;
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
                                     <img alt="" class="auto-style4" src="icons/l.png" /></td>
                                 <td style="align-content:first baseline"><asp:Label ID="lbluname" runat="server" Font-Bold="True" Font-Names="Bell MT" ForeColor="White" Font-Size="X-Large"></asp:Label>
                                 </td>
                             </tr>
                         </table>
                     </td>
                     <td style="text-align:center" class="auto-style7">
            <asp:Label ID="lblhome0" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="40pt" ForeColor="white" Text="Home"></asp:Label>
                     </td>
                     <td class="auto-style6"><asp:DropDownList ID="list1" runat="server" BackColor="Black" CssClass="auto-style1" Font-Bold="True" Font-Names="Bell MT" Font-Underline="False" ForeColor="#049A9E" Height="31px" ValidateRequestMode="Enabled" Width="94px" style="border-width:2px" OnSelectedIndexChanged="list1_SelectedIndexChanged" AutoPostBack="True">
                 <asp:ListItem>Home</asp:ListItem>
                 <asp:ListItem>Account</asp:ListItem>
                 <asp:ListItem>Orders</asp:ListItem>
                         <asp:ListItem>Login</asp:ListItem>
            </asp:DropDownList>
                     </td>
                     <td style="align-content:last baseline" class="auto-style5">
            
             <table class="auto-style3">
                 <tr>
                     <td style="align-content:last baseline" class="auto-style5">
              <asp:DropDownList ID="list2" runat="server" BackColor="Black" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="#049B9F" Height="32px"  Width="190px" CssClass="auto-style8" DataSourceID="sq2" DataTextField="b_name" DataValueField="b_name" AutoPostBack="True" OnSelectedIndexChanged="list2_SelectedIndexChanged">
     <asp:ListItem>Available Manga Books</asp:ListItem>
 </asp:DropDownList>
             <asp:SqlDataSource ID="sq2" runat="server" ConnectionString="<%$ ConnectionStrings:b_m %>" ProviderName="<%$ ConnectionStrings:b_m.ProviderName %>" SelectCommand="SELECT [b_name] FROM [B_avail]"></asp:SqlDataSource>
                     </td>
                 </tr>
             </table>
                     </td>
                 </tr>
             </table>
        </div><br />
        <div>
               <table>
                   <tr>
                       <td width="45%">
                           <table style="padding: 8px; border-style: groove; border-width: 2px">
                               <tr>
                                   <td>
                                       <img alt="" class="ing" src="solo%20leveling.jpg" style="padding-right: 5px"/>
                                   </td>
                                   <td>
                                       <asp:Label ID="Label1" runat="server" Text="Solo Leveling" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label>
                                       <br />
                                       <asp:Label ID="Label2" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">
                                           Solo Leveling manga depicts Jinwoo's journey from a weak hunter to a formidable force, empowered by a unique leveling system. He battles monstrous creatures to protect humanity, unveiling mysteries and gaining allies along the way.
                                       </asp:Label>
                                       <br />
                                       <br />
                                       &nbsp;<asp:Button ID="buybtn1" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn1_Click" />&nbsp; 
                                   </td>
                               </tr>
                           </table>
                       </td>
                       <td width="45%">
                           <table style="padding: 8px; border-style: groove; border-width: 2px">
                               <tr>
                                    <td>
                                        <img alt="" class="ing" src="icons/Love%20Rebooted.jpg" style="padding-right: 5px"/>
                                    </td>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text="Love Rebooted" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label4" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">Love Rebooted manga follows Mia, a programmer who discovers an AI capable of rewriting romantic memories. As she delves deeper, Mia grapples with ethical dilemmas and navigates the complexities of love and identity.
</asp:Label>
                                        <br />
                                        <br />
                                       &nbsp;<asp:Button ID="buybtn2" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn2_Click" />&nbsp; 
                                    </td>
                                </tr>
                            </table>
                       </td>
                   </tr>
                   <tr>
                        <td width="45%">
     <table style="padding: 8px; border-style: groove; border-width: 2px">
         <tr>
             <td>
                 <img alt="" class="ing" src="icons/mercenary%20enrollment.jpg" style="padding-right: 5px"/>
             </td>
             <td>
                 <asp:Label ID="Label5" runat="server" Text="Mercenary Enrollment" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label>
                 <br />
                 <asp:Label ID="Label6" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">
                     Mercenary Enrollment manga follows Ray, an ordinary high schooler recruited into a prestigious academy for mercenaries. As he navigates intense training, friendships, and battles against formidable foes, Ray discovers his true potential in a world of conflict.
                 </asp:Label>
                 <br />
                 <br />
                 &nbsp;<asp:Button ID="buybtn3" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn3_Click" />&nbsp; 
             </td>
         </tr>
     </table>
 </td>
 <td width="45%">
     <table style="padding: 8px; border-style: groove; border-width: 2px">
         <tr>
              <td>
                  <img alt="" class="ing" src="icons/Not-a-Lady-Anymore.png" style="padding-right: 5px"/>
              </td>
              <td>
                  <asp:Label ID="Label7" runat="server" Text="Not A Lady Anymore" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label>
                  <br />
                  <asp:Label ID="Label8" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">
                        Not a Lady Anymore manga tracks Emi, a woman who defies societal norms to pursue a career in male-dominated fields. As she challenges stereotypes and navigates personal struggles, Emi embraces her identity and paves her own path to success.
                  </asp:Label>
                  <br />
                  <br />
                 &nbsp;<asp:Button ID="buybtn4" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn4_Click" />&nbsp; 
              </td>
          </tr>
      </table>
 </td>
                   </tr>
                   <tr>
                                             <td width="45%">
    <table style="padding: 8px; border-style: groove; border-width: 2px">
        <tr>
            <td>
                <img alt="" class="ing" src="icons/omniscient%20reader's%20viewpoint.jpg" style="padding-right: 5px"/>
            </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Omniscient Reader's Viewpoint" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">
                   Omniscient Reader's Viewpoint manga follows Dokja, who finds himself living in the world of a novel he once read. With his knowledge, he navigates through events, influencing the story and unraveling mysteries to shape its outcome.
                </asp:Label>
                <br />
                <br />
                &nbsp;<asp:Button ID="buybtn5" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn5_Click" />&nbsp; 
            </td>
        </tr>
    </table>
</td>
<td width="45%">
    <table style="padding: 8px; border-style: groove; border-width: 2px">
        <tr>
             <td>
                 <img alt="" class="ing" src="icons/i refuse the attachment of the emperor who abandoned me.jpg" style="padding-right: 5px"/>
             </td>
             <td>
                 <asp:Label ID="Label11" runat="server" Text="I Refuse The Attachment Of The Emperor Who Abandoned Me" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label>
                 <br />
                 <asp:Label ID="Label12" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">
                     I Refuse the Attachment of the Emperor Who Abandoned Me manga centers on Lucia, betrayed by her husband, the emperor. Determined to forge her own destiny, she navigates court politics, seeking justice and reclaiming her power amidst adversity.
                 </asp:Label>
                 <br />
                 <br />
                &nbsp;<asp:Button ID="buybtn6" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn6_Click" />&nbsp; 
             </td>
         </tr>
     </table>
</td>
                   </tr>
                   <tr>
    <td width="45%">
    <table style="padding: 8px; border-style: groove; border-width: 2px">
        <tr>
            <td>
                <img alt="" class="ing" src="icons/the%20chronicles%20of%20heavenly%20demon.png" style="padding-right: 5px"/>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="The Chronicles Of Heavenly Demon " ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20"></asp:Label>
                <br />
                <asp:Label ID="Label14" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">
                   The Chronicles of Heavenly Demon manga narrates the journey of Tian, a demon who seeks revenge against those who betrayed him. With ancient powers and allies, he embarks on a quest for vengeance, unraveling secrets of his past and destiny.
                </asp:Label>
                <br />
                <br />
                &nbsp;<asp:Button ID="buybtn7" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="buybtn7_Click" />&nbsp; 
            </td>
        </tr>
    </table>
</td>
<td width="45%">
    <table style="padding: 8px; border-style: groove; border-width: 2px">
        <tr>
             <td>
                 <img alt="" class="ing" src="icons/m.png" style="padding-right: 5px"/>
             </td>
             <td>
                 <asp:Label ID="Label15" runat="server" Text="Overgeared" ForeColor="#FFCCFF" Font-Bold="True" Font-Names="Bell MT" Font-Size="20pt"></asp:Label>
                 <br />
                 <asp:Label ID="Label16" runat="server" ForeColor="#FFFFCC" Font-Size="15pt">Overgeared manga tracks Grid, a gamer who enters a virtual reality game to support his family. As he stumbles upon unique items and challenges, Grid transforms from a novice to a legendary player, reshaping&nbsp;the&nbsp;game&nbsp;world.</asp:Label>
                 <br />
                 <br />
                &nbsp;<asp:Button ID="Button3" runat="server" Text="Buy Now" BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px" Font-Bold="True" Font-Names="Bell MT" Font-Size="Medium" ForeColor="Black" OnClick="Button3_Click" />&nbsp; 
             </td>
         </tr>
     </table>
</td>
                   </tr>
               </table>
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label17" runat="server" Text="More Coming Soon" Font-Bold="True" Font-Names="Bell MT" Font-Size="XX-Large" ForeColor="#3EA397"></asp:Label>
        <asp:Label ID="lblu" runat="server" Text="Label"></asp:Label>
        </form>   
</body>
</html>
