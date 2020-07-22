<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-primary" <%--style="background: url('../images/passenger-airplanes-clouds-5k-m7-1920x1080.jpg')"--%>>
       
        <div class="panel-heading" style="color: white">
            <h3 class="panel-title text-center" style="font-weight:bolder;">Sign In</h3>
        </div><br />
        <div class="panel-body">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">E-mail</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ControlToValidate="TextBox3" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Password</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Password is required" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-2 col-sm-offset-5">
                        <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="btn btn-primary" Style="align-content: center" OnClick="btn_user_login_Click" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-6 col-sm-offset-4">
                        Not Registered? <a href="registration.aspx">Create New Account Click Here</a>
                    </div>
                </div>
            </div>
        </div>
       
    </div>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [admin_login]"></asp:SqlDataSource>
 
</asp:Content>

