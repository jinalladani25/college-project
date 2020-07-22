<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <div class="panel panel-primary" <%--style="background: url('../images/passenger-airplanes-clouds-5k-m7-1920x1080.jpg')"--%>>
       
        <div class="panel-heading" style="color: white">
            <h3 class="panel-title text-center" style="font-weight:bolder;">Payment Detail</h3>
        </div><br />
        <div class="panel-body">
            <div class="form-horizontal">
                 <div class="form-group">
                    <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Card No</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtcardno" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txtcardno"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
                 <div class="col-sm-8 col-sm-offset-3">
                        <label class="col-sm-2">Cvv No</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtcvvno" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txtcvvno"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
            <div class="form-group">
             <div class="col-sm-8 col-sm-offset-3">
                       <br /> <label class="col-sm-2">Name</label>
                        <div class="col-sm-6">
                            <asp:TextBox ID="txtcardname" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Red" runat="server" Display="Dynamic" ErrorMessage="Email Address is required" ControlToValidate="txtcardname"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                </div>
             <div class="form-group">
                    <div class="col-sm-2 col-sm-offset-5">
                        <asp:Button ID="Button1" runat="server" Text="Pay Securly" CssClass="btn btn-primary" Style="align-content: center" OnClick="Button1_Click1" />
                    </div>
                </div>
                
           </div>
        </div>
    

</asp:Content>
