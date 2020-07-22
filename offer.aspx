<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="offer.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
        #menu{
            padding:27px 0 0 42px!important;
        }
    </style>
    <br />
        <table class="auto-style1">
            <tr>
                <td>
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/off1.jpg"   Height="205px" Width="406px" OnClick="ImageButton1_Click1" />
    
                    
                </td>
                <td><asp:ImageButton ID="ImageButton2" runat="server" Height="205px" Width="406px"  ImageUrl="~/images/off2.png" OnClick="ImageButton2_Click"  /></td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="<b>New Year Sale" Font-Size="Larger"></asp:Label>
                    
                    <br />
                    <br />
                    
                </td>
                <td><asp:Label ID="Label2" runat="server" Text="<b>Grab Your Additional Cashabck" Font-Size="Larger"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/off3.png" Height="205px" Width="406px" OnClick="ImageButton3_Click"  />
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/off4.png" Height="205px" Width="406px" OnClick="ImageButton4_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="<b>Regisration Reward" Font-Size="Larger"></asp:Label>
                    
                    <br />
                    <br />
                    
                </td>
                <td><asp:Label ID="Label4" runat="server" Text="<b>pre christmas sale" Font-Size="Larger"></asp:Label></td>
            </tr>
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/off5.jpg" Height="205px" Width="406px" OnClick="ImageButton5_Click" />
                </td>
                 <td>
                    <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/off6.png" Height="205px" Width="406px" OnClick="ImageButton6_Click"  />
                </td>
           
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="<b>Book with your cashback price" Font-Size="Larger"></asp:Label>
                    
                    <br />
                    <br />
                    <br />
                    
                </td>
                <td><asp:Label ID="Label6" runat="server" Text="<b>Top-Up Now" Font-Size="Larger"></asp:Label></td>
            </tr>
            
        </table>
    
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <title>AirLines</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
    <style type="text/css">
.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>



