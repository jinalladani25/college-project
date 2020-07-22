<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage2.master" AutoEventWireup="true" CodeFile="ticketdetail.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #menu {
            padding: 27px 0 0 42px !important;
        }
    </style>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT [FirstName], [LastName], [Email], [FlightClass], [Adult], [Children], [Infrant], [Fromplace], [Toplace], [Trip], [Date], [Returndate], [TotalPayment] FROM [TravellerDetails]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="173px" Width="914px" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="FlightClass" HeaderText="FlightClass" SortExpression="FlightClass" />
            <asp:BoundField DataField="Adult" HeaderText="Adult" SortExpression="Adult" />
            <asp:BoundField DataField="Children" HeaderText="Children" SortExpression="Children" />
            <asp:BoundField DataField="Infrant" HeaderText="Infrant" SortExpression="Infrant" />
            <asp:BoundField DataField="Fromplace" HeaderText="Fromplace" SortExpression="Fromplace" />
            <asp:BoundField DataField="Toplace" HeaderText="Toplace" SortExpression="Toplace" />
            <asp:BoundField DataField="Trip" HeaderText="Trip" SortExpression="Trip" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Returndate" HeaderText="Returndate" SortExpression="Returndate" />
            <asp:BoundField DataField="TotalPayment" HeaderText="TotalPayment" SortExpression="TotalPayment" />
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

