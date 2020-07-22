<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="travellerDetails.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
    <div class="panel panel-primary" <%--style="background: url('../images/passenger-airplanes-clouds-5k-m7-1920x1080.jpg')"--%>>

        <div class="panel-heading" style="color: white">
            <h3 class="panel-title text-center" style="font-weight: bolder;">Traveller Detail</h3>
        </div>
        <br />
        <div class="panel-body">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-sm-12">
                        <label class="col-sm-2">Adult Name</label>
                        <div class="col-sm-3">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" Font-Overline="False">
                                <asp:ListItem>Mr.</asp:ListItem>
                                <asp:ListItem>Mrs.</asp:ListItem>
                                <asp:ListItem>Miss.</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtfname" runat="server" placeholder="FirstName" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12 col-sm-offset-2">
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtmname" runat="server" placeholder="MiddleName" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                        </div>
                        <div class="col-sm-3">
                            <asp:TextBox ID="txtlname" runat="server" placeholder="LastName" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <label class="col-sm-2">E-mail</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtemail" runat="server" Placeholder="E-mail Address" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <label class="col-sm-2">Contact No</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtcontact" runat="server" Placeholder="Contact No" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-2 col-sm-offset-4">
                            <asp:Button ID="Button1" runat="server" Text="Payment To Process" CssClass="btn btn-primary" Style="align-content: center" OnClick="Button1_Click1" />
                        </div>
                    </div>

                </div>
            </div>

            <table>
                <tr>
                    <th>Journey</th>
                    <th>Date</th>
                    <th>Class</th>
                    <th>Adult</th>
                    <th>Child</th>
                    <th>Infrant</th>
                    <th>Total</th>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbljourney" runat="server"></asp:Label>

                    </td>
                    <td>
                        <asp:Label ID="lbldate" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lblclass" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lbladult" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lblchild" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lblinfrant" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lbltotal" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr id="returnrow" runat="server">
                     <td>
                        <asp:Label ID="lblreturnjourney" runat="server"></asp:Label>
                         
                     </td>
                    <td>
                        <asp:Label ID="lblreturndate" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lblclass2" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lbladult2" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lblchild2" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lblinfrant2" runat="server"></asp:Label>
                    </td>
                    <td style="text-align:center;">
                        <asp:Label ID="lbltotal2" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </div>




</asp:Content>

