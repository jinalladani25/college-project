<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="updateflight.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <%--<script src="css/jquery.min.js"></script>--%>
     <style>
        #menu {
            padding: 27px 0 0 42px !important;
        }
    </style>
    <center>
        <table>
            <tr>
                <td colspan="2">
                   <br /><center> <asp:Label ID="Label11" runat="server" Text="Flight Details" Font-Size="XX-Large"></asp:Label></center><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_selectId" runat="server" Text="Select Id:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_logo" runat="server" Text="Flight Logo:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>indigo.png</asp:ListItem>
                        <asp:ListItem>goair.png</asp:ListItem>
                        <asp:ListItem>spicejet.png</asp:ListItem>
                        <asp:ListItem>jet.png</asp:ListItem>                     <asp:ListItem></asp:ListItem>
                        <asp:ListItem>airindia.png</asp:ListItem>

                    </asp:DropDownList><br /><br />

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_fcompany" runat="server" Text="Flight Company:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_fcompany" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_fromplce" runat="server" Text="From Place:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_fromplce" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_toplce" runat="server" Text="To Place:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_toplce" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_deptime" runat="server" Text="Dep Time:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_deptime" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_arrival" runat="server" Text="Arrival Time:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_arrival" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_duration" runat="server" Text="Duration:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_duration" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_price" runat="server" Text="Price:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_price" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl_isactive" runat="server" Text="IsActive:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_isctive" runat="server" BorderStyle="Outset"></asp:TextBox><br /><br />
                </td>
            </tr>
           </table>
               
                    <asp:Button ID="btn_insert" runat="server" Text="Insert Flight" Height="40px" OnClick="Button1_Click"></asp:Button>   
                
                
                    <asp:Button ID="btn_update" runat="server" Text="Update Flight" Height="40px" OnClick="btn_update_Click"></asp:Button>   
                
                
                    <asp:Button ID="btn_delete" runat="server" Text="Delete Flight" Height="40px" OnClick="btn_delete_Click"></asp:Button>   
                
            
            
    </center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [Flightdetail]"></asp:SqlDataSource>
    </asp:Content>

