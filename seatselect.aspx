<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="seatselect.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

<table>
        <tr>
            <td align="center" colspan="5">
                <asp:Label ID="lbl_seat" runat="server" Text="Select Seat" Font-Bold="True" Font-Size="25px"></asp:Label><br />
            </td>
        </tr>
        
    <tr>
        <td class="auto-style1">
            <asp:Button ID="Button1" runat="server" Text="1" OnClick="Button1_Click" />
        </td>
        <td class="auto-style1">
            <asp:Button ID="Button2" runat="server" Text="2" OnClick="Button2_Click" />
        </td>
         <td class="auto-style1">
            <asp:Button ID="Button3" runat="server" Text="3" OnClick="Button3_Click" />
        </td>
         <td class="auto-style1">
            <asp:Button ID="Button4" runat="server" Text="4" OnClick="Button4_Click" />
        </td>
    </tr>
     
</table>
             <asp:Button ID="Button5" runat="server" Text="Traveller Detail" OnClick="Button5_Click" />
         


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
        }
    </style>
</asp:Content>


