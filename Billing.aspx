<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Billing.aspx.cs" Inherits="HotelBilling.Billing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Billing</title>
    <link rel="icon" href="pics/logo.png" />
    <style>
        #bill {
            width: 100%;
        }

        #bill_title {
            width: fit-content;
            color: #fac46e;
            font-family: 'comic Sans MS';
            font-size: medium;
            font-weight: bold;
            text-align: center;
            letter-spacing: 0.5em;
            word-spacing: 0.5em;
            border: 5px double #fac46e;
            border-radius: 15px;
            background-color: saddlebrown;
        }

        .div-disc {
            width: 100%;
            display: grid;
            grid-template-columns: 50% 50%;
        }

        .table {
            width: 100%;
            height: 230px;
        }

        .table-cell {
            width: 300px;
        }

        #TextBox2 {
            background-color: none;
        }

        .discount-quote {
            font-family: Forte;
            text-decoration: blink;
            word-spacing: 0.5em;
            letter-spacing: 0.2em;
            text-align: center;
            font-size: 32px;
            color: #FF5004;
        }

        #customer-msg {
            text-align: center;
            font-size: 25px;
            color: #FF5004;
            word-spacing: 0.3em;
            font-family: Forte;
        }

        .auto-style1 {
            width: 97%;
            height: 230px;
        }



        #div-img {
            width: 100%;
        }

        #thank {
            width: 80%;
            height: 40%;
            margin: auto;
        }

        #div-main {
            display: grid;
            grid-template-columns: 50% 50%;
        }

        .cols {
            width: 100%;
        }


       

        .auto-style6 {
            height: 29px;
        }

        #Customer-of-the-week {
            font-family: "Curlz MT";
            font-size: xx-large;
            color: #892357;
            font-weight: normal;
            border-width: 3px;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            border-color: #FFFFFF;
            width: fit-content;
            margin: auto;
            border-radius: 150px 150px;
        }

        #div-grid2 {
            margin-top: 0px;
            padding-top: 0px;
        }

        #body {
            padding-bottom: 0px;
            margin-bottom: 0px;
            background-image: url('pics/BG2.png');
            background-repeat: no-repeat;
            background-size: cover;
        }

        #div-customer {
            border-width: 3px;
            border: solid;
            border-color: #892357;
            border-radius: 100px 3px;
        }

        #totaltxt {
            text-align: right;
            border-radius: 15px;
        }

        #submit {
            border-radius: 15px;
        }

        #GrandTotaltxt {
            text-align: right;
            border-radius: 15px;
        }

        #DiscountList {
            border: 3px groove red;
            border-radius: 10px;
            background-color: coral;
        }

        #submitting {
            margin: auto;
            border-radius:10px;
        }

        #DiscountPic {
            width: 100%;
        }

        .div-disc-divs 
        {
        }
    </style>
</head>
<body id="body">
    <form id="form1" runat="server">
        <div id="div-main">
            <div id="div-grid1">
                <br />
                <div style="width: 100%;">
                    <h4 id="bill_title">&nbsp Bill printing for you...&nbsp
                    </h4>
                </div>
                <br />
                <div align="center" id="bill">
                    <asp:GridView ID="GridView1" runat="server" Height="75px" Width="659px" BorderStyle="None" GridLines="None" Font-Bold="True">
                        <HeaderStyle BackColor="Black" BorderStyle="None" ForeColor="White" Width="200px" />
                        <RowStyle BorderStyle="None" HorizontalAlign="Center" />
                    </asp:GridView>
                </div>
                <br />
                <br />
                <br />
                <br />
                <div class="div-disc">
                    <div class="div-disc-divs">
                        <strong id="" style="font-family: 'Century Gothic'; font-weight: bold; font-size: xx-large">TOTAL
                            <br />
                        </strong>
                        <asp:TextBox ID="totaltxt" type="number" ReadOnly="true" runat="server" Font-Size="45px" Height="47px" Width="223px"></asp:TextBox>
                        <asp:Image runat="server" Visible="false" ID="DiscountPic" ImageUrl="~/pics/wow.gif" />
                    </div>
                    <div class="div-disc-divs">
                        <strong style="font-family: 'Century Gothic'; font-size: xx-large; font-weight: bold">GRAND TOTAL</strong><br />
                        <asp:TextBox ID="GrandTotaltxt" type="number" ReadOnly="true" Font-Size="45px" Height="47px" Width="260px" runat="server"></asp:TextBox><br />
                        <br />
                        <asp:RadioButtonList ID="DiscountList" runat="server" Caption="Discount" ForeColor="aquamarine" TextAlign="right" RepeatDirection="Horizontal" Font-Bold="true" Font-Size="32px" RepeatColumns="3" Font-Names="Castellar" BackColor="Coral">
                            <asp:ListItem Value="20">    20%</asp:ListItem>
                            <asp:ListItem Value="01">    01%</asp:ListItem>
                            <asp:ListItem Value="4">     04%</asp:ListItem>
                            <asp:ListItem Value="02">    02%</asp:ListItem>
                            <asp:ListItem Value="08">    08%</asp:ListItem>
                            <asp:ListItem Value="13">    13%</asp:ListItem>
                            <asp:ListItem Value="00">    00%</asp:ListItem>
                            <asp:ListItem Value="18">    18%</asp:ListItem>
                            <asp:ListItem Value="05">    05%</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <span class="discount-quote">Check Your Luck</span><br />
                        <asp:Button ID="submit" runat="server" Text="SUBMIT" Font-Bold="True" OnClick="submit_Click" BorderStyle="Solid" BorderColor="Black" Font-Size="25px" Height="43px" Width="118px" />
                        &nbsp;<i><br />
                            (only one time clickable)</i>
                        <asp:HiddenField ID="DiscountHolder" runat="server" Value="false" />
                    </div>
                </div>
            </div>
            <div id="div-grid2">
                <div>
                    <table style="margin:auto;">
                            <tr>
                                <td><strong style="font-size: 20px; color: #892357">NAME</strong></td>
                                <td><strong>:</strong>
                                    <asp:TextBox ID="name" runat="server" BackColor="#FF5004" ForeColor="White" BorderStyle="None" Height="25px" Font-Bold="True" Font-Size="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><strong style="font-size: 20px; color: #892357">MOBILE</strong></td>
                                <td><strong>:</strong>
                                    <asp:TextBox ID="number" runat="server" BackColor="#FF5004" ForeColor="White" BorderStyle="None" Height="25px" Font-Bold="True" Font-Size="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6"><strong style="font-size: 20px; color: #892357">CITY</strong></td>
                                <td class="auto-style6"><strong>:</strong>
                                    <asp:TextBox ID="location" runat="server" BackColor="#FF5004" Plaeholder="location" ForeColor="White" BorderStyle="None" Height="25px" Font-Bold="True" Font-Size="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><strong style="font-size: 20px; color: #892357">TOTAL BILL</strong></td>
                                <td><strong>:</strong>
                                    <asp:TextBox ID="total_amount" runat="server" BackColor="#FF5004" ForeColor="White" ReadOnly="true" BorderStyle="None" Height="25px" Font-Bold="True" Font-Size="25px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td><strong style="font-size: 20px; color: #892357">RATING</strong></td>
                                <td>&nbsp;&nbsp;
                                <asp:RadioButtonList ID="rating" runat="server" RepeatDirection="Horizontal" Width="187px" BorderColor="#FF5004" ForeColor="#FF5004" Font-Bold="True" Font-Size="20px" Height="41px">
                                    <asp:ListItem Selected="True">1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td> 
                                    <asp:Button ID="submitting" runat="server" Text="SUBMIT" BackColor="#FF5004" BorderStyle="None" ForeColor="White" Font-Bold="True" Font-Size="20px" Height="25px" OnClick="submitting_Click" /> 
                                </td>
                            </tr>
                        </table>
                    <div id="div-customer">
                        <h1 id="Customer-of-the-week" style="background-color: #FFFFFF">&nbsp;Customer of the Week&nbsp; </h1>
                        <p id="customer-msg">
                            Dear Customer, Every week we will reward one of our customer, who payed the highest bill, with some exsiting gifts i,e "Customer of the Week". Enter your details to be part of this occation.
                        </p>
                        
                    </div>

                    <div align="center">
                        <asp:GridView ID="gvCustomer" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
