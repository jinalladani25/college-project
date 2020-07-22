<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="_Default" %>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <div class="panel panel-primary" <%--style="background: url('../images/passenger-airplanes-clouds-5k-m7-1920x1080.jpg')"--%>>
       
        <div class="panel-heading" style="color: white">
            <h3 class="panel-title text-center" style="font-weight:bolder;">Registration</h3>
        </div><br />
        <div class="panel-body">
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">UserName</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_user_uname" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txt_user_uname"></asp:RequiredFieldValidator>
                            
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">E-mail</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_user_email" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txt_user_email"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ControlToValidate="txt_user_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>

                    </div>
                    
                <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <br /><label class="col-sm-2">Password</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_user_pass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Password is required" ControlToValidate="txt_user_pass"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                     <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Re-Password</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_user_repass" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Password is required" ControlToValidate="txt_user_repass"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_user_pass" ControlToValidate="txt_user_repass" ErrorMessage="plzzz correct password"></asp:CompareValidator>
                        </div>
                    </div>
                </div>
               <div class="form-group">
                   <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Gender</label>
                    
                    <div class="col-sm-4 col-sm-offset-1">
                        <asp:RadioButtonList ID="rdio_user_gender" runat="server" ClientIDMode="Static" RepeatDirection="Horizontal">
                            <asp:ListItem Value="Male" >
                                Male
                            </asp:ListItem>
                            <asp:ListItem Value="Female">
                                Female
                            </asp:ListItem>
                        </asp:RadioButtonList>
                        </div>
                  </div>
              </div>
                     <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Address</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_address" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Password is required" ControlToValidate="txt_address"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
               
                    <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Contact No</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txt_user_contact" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txt_user_contact"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Please Enter Valid Email" ControlToValidate="txt_user_contact" ValidationExpression="\+\d{2}\-\d{10}"></asp:RegularExpressionValidator>
                        </div>
                    </div>

                        <div class="form-group">
                            <div class="col-sm-6 col-sm-offset-3">
                    <label class="col-sm-3">City </label>
                    <div class="col-sm-7">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="city is required" ControlToValidate="txt_address"></asp:RequiredFieldValidator>
                        
                        
                                          </div>
                </div>
                <div class="form-group">
                     <div class="col-sm-2 col-sm-offset-5">
                        <asp:Button ID="Button1" runat="server" Text="Registration" CssClass="btn btn-primary" Style="align-content: center" OnClick="Button1_Click1"/>
                         <%--<asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Style="align-content: center" OnClick="Button1_Click" Text="Submit">--%>
                        </div>
                    </div>
                </div>
             </div>
        </div>
       
    </div>
</div>
    
</asp:Content>


    


