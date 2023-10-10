<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HotelBilling.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Blissfull</title>
    <link rel="icon" href="pics/logo.png" />
    <style>
        #grid1
        {
            display:grid;
            grid-template-columns:50% 50%;
            width:100%;
            padding-bottom:0px;
            margin-bottom:0px;
        }
        #div1
        {
            width:100%;
            padding-bottom:0px; margin-bottom:0px;
        }
        #div2
        {
            width:100%;
            padding-bottom:0px;
            margin-bottom:0px;
        }
         .menu {
            font-family: Dubai;
            font-size: 20px;
            font-weight: normal;
            color: #000000;
            width: 100%;
            height: 58px;
            align-self:center; 
            text-align: center;
        }
        .text
        {
            width:30%;
            margin:auto;
            color:#58108D;
            font-size:20px;
            font-weight:bold;
            
        }

        .pics {
            width: 50%;
            height: 40%;
        }

        .count {
            width: 100px;
            height: 20px;
            font-size: 20px;
            border-style:none;            
            border-radius:10px;
            color:white;
            background-color:#58108D;
            

        }
        .table-div {
            width: 100%;
            border: 10px solid #58108D;
            border-radius:100px 10px;
            background-color: rgba(255,255,255, 0.7);
        }
        .title
        {            
            font-family: 'Curlz MT';
            font-size:100px;
            font-weight: bold; 
            color: #FFFFFF; 
            width: 100%;  
            padding-top:0px;
            margin-top:0px;
            padding-bottom:0px;
            margin-bottom:0px;
        }
       
        #subtitle {
            width: 100%;           
            font-family: 'cursive';
            font-size: 30px;
            font-weight: lighter;            
            color: darkslateblue;
            text-align: center;
            font-style: italic;
            margin-top:0px;
            padding-top:0px;
        }
        #body
        {
            
            padding-bottom:0px;
            margin-bottom:0px;
            background-image:url('pics/background2.png');
            background-repeat:no-repeat;
            background-size:cover;
            
        }
        .table-data
        {
           
        }
        .div2-pic2
        {
            display:block;
            margin-left:auto;
            margin-right:auto;
        }
        .div2-pic1{
            width:100%;
            
        }
        
        .auto-style2 {
            width: 100%;
            height: 93px;
        }
        #orderbtn
        {
            border-radius:15px;
        }
        .auto-style3 {
            text-align: center;
        }
        .menu-title
        {
            /*border: 5px solid #FFFFFF;*/
            padding-top:0px;
            margin-top:0px;
            padding-bottom:1px;
            margin-bottom:1px;
            font-family: cursive;
            font-size:30px; 
            font-weight: bolder; 
            color: #FFFFFF;
            border-radius:5px;
            background-color: #58108D;
            width:fit-content;
            text-align :center;
            margin:auto;
            
        }
    </style>
</head>
<body id="body">
    <form id="form1" runat="server">
        <div id="grid1">
            <div  id="div1" >
             <p class="title">
                 <img id="icon" src="pics/icon.png" width="120" height="120" style=" vertical-align:middle;"/>BlissFull
             </p>
             <br /> 
            <div class="table-div" >
                 <p class="menu-title" >
                     &nbsp;Menu:&nbsp;
                 </p>
             <table align="center" width="100%">
                 <tr>
                    <td class="auto-style3">
                        <img class="pics" src="pics/idly.png" /><br />
                        <strong class="text" >IDLY</strong>
                    </td>
                    <td class="auto-style3">
                        <img class="pics" src="pics/dosa.png" /><br />
                        <strong class="text" >DOSA</strong>
                    </td>
                    <td class="auto-style3">
                        <img class="pics" src="pics/vada.png" /><br />
                        <strong class="text" >VADA</strong>
                    </td>
                 </tr>
                 <tr>
                    <td class="auto-style3">
                        <p class="menu" >                            
                            <asp:TextBox ID="idlytxt" class="count" Text="0" min="0" TextMode="Number" ToolTip="Enter how many number of plates you want" runat="server"></asp:TextBox>
                         </p>
                      </td>
                    <td class="auto-style3">
                        <p class="menu"  >                            
                            <asp:TextBox ID="dosatxt" class="count" Text="0" min="0" TextMode="Number" ToolTip="Enter how many number of plates you want" runat="server"></asp:TextBox>
                          </p>
                       </td>
                    <td class="auto-style3" >
                        <p class="menu" >                  
                            <asp:TextBox ID="vadatxt" class="count" Text="0" min="0" TextMode="Number" ToolTip="Enter how many number of plates you want" runat="server"></asp:TextBox>
                        </p>
                    </td>
                  </tr>
                 <tr>
                    <td class="auto-style3">
                        <img class="pics" src="pics/upma.png" /><br />
                        <strong class="text" >UPMA</strong>
                    </td>
                    <td class="auto-style3">
                        <img class="pics" src="pics/puri.png" /><br />
                        <strong class="text" >PURI</strong>
                    </td>
                    <td class="auto-style3">
                        <img class="pics" src="pics/bonda.png" /><br />
                        <strong class="text" >BONDA</strong>
                    </td>
                  </tr>
                 <tr>
                    <td class="auto-style3">
                        <p class="menu" >                             
                            <asp:TextBox ID="upmatxt" class="count" Text="0" min="0" TextMode="Number" ToolTip="Enter how many number of plates you want" runat="server" ></asp:TextBox></p>
                    </td>
                    <td class="auto-style3">
                        <p class="menu" >                                
                            <asp:TextBox ID="puritxt" class="count" Text="0" min="0" TextMode="Number" ToolTip="Enter how many number of plates you want" runat="server" ></asp:TextBox></p>
                    </td> 
                    <td class="auto-style3" >
                        <p class="menu" >
                           <asp:TextBox ID="bondatxt" class="count" Text="0" min="0" TextMode="Number" ToolTip="Enter how many number of plates you want" runat="server"></asp:TextBox>                                
                        </p>
                    </td>
                </tr>
             </table>
             </div>
             <p align="center" style="padding-top:0px; margin-top:10px;padding-bottom:0px; margin-bottom:0px; " class="auto-style2">
            
                    <asp:Button Width="250px" Height="70px" ID="orderbtn" runat="server" Text="ORDER" BackColor="#FF5004" BorderColor="white" BorderStyle="Dashed" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"  OnClick="orderbtn_Click" OnClientClick="orderbtn_Click" PostBackUrl="~/Billing.aspx" />
             </p>
            </div>
            <div id="div2">
                <img class="div2-pic1" src="pics/ezgif.com-crop.gif" />
                <img class="div2-pic2" src="pics/oie_10155152xQLtg0f7.gif"  />
            </div>
        </div>
    </form>
</body>
</html>
