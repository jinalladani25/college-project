<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="viewfeedback.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #menu {
            padding: 27px 0 0 42px !important;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="75px" Width="890px">
         <AlternatingRowStyle BackColor="White" />
         <Columns>
             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
             <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
             <asp:BoundField DataField="Messege" HeaderText="Messege" SortExpression="Messege" />
         </Columns>
         <EditRowStyle BackColor="#2461BF" />
         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
         <RowStyle BackColor="#EFF3FB" />
         <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
         <SortedAscendingCellStyle BackColor="#F5F7FB" />
         <SortedAscendingHeaderStyle BackColor="#6D95E1" />
         <SortedDescendingCellStyle BackColor="#E9EBEF" />
         <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>

</asp:Content>

