<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="panel panel-primary" <%--style="background: url('../images/passenger-airplanes-clouds-5k-m7-1920x1080.jpg')"--%>>
       
        <div class="panel-heading" style="color: white">
            <h3 class="panel-title text-center" style="font-weight:bolder;">Feedback</h3>
        </div><br />
        <div class="panel-body">
            <div class="form-horizontal">
                 <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Name</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_name" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txt_name"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
               
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">E-mail</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_email" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Subject</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_subject" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Password is required" ControlToValidate="txt_subject"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Messege</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_msg" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Password is required" ControlToValidate="txt_msg"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                

                <div class="form-group">
                    <div class="col-sm-2 col-sm-offset-5">
                        <asp:Button ID="Button1" runat="server" Text="Send" CssClass="btn btn-primary" Style="align-content: center" OnClick="Button1_Click"  />
                    </div>
                </div>
               </div>
        </div>
       
    </div>

    













    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs %>" SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
   </asp:Content>



