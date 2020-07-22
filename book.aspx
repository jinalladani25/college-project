<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="book.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<script src="css/jquery.min.js"></script>--%>
    <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <asp:ScriptManager ID="ScriptManager1" runat="server"
        EnablePageMethods="true">
    </asp:ScriptManager>
    <style>
        #menu {
            padding: 27px 0 0 42px !important;
        }
    </style>

    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Flight Booking</h3>
        </div>
        <div class="panel-body">
            <div class="form-horizontal">
                <div class="form-group">

                    <div class="col-sm-4 col-sm-offset-2">
                        <asp:RadioButtonList ID="radioflighttrip" runat="server" ClientIDMode="Static" RepeatDirection="Horizontal">
                            <asp:ListItem Value="OneWay" Selected="True">
                                One Way
                            </asp:ListItem>
                            <asp:ListItem Value="RoundTrip">
                                Round Trip
                            </asp:ListItem>
                        </asp:RadioButtonList>

                    </div>
                    <label class="col-sm-1">
                        Class
                    </label>
                    <div class="col-sm-4">
                        <asp:DropDownList ID="ddlflightclass" runat="server" CssClass="form-control" Font-Overline="False">
                            <asp:ListItem Value="Economy">Economy</asp:ListItem>
                            <asp:ListItem Value="Premium Economy">Premium Economy</asp:ListItem>
                            <asp:ListItem Value="Business">Business</asp:ListItem>
                        </asp:DropDownList>
                    </div>

                </div>

                <div class="form-group">
                    <label class="col-sm-2">Departing From: <span class="rowred">*</span></label>
                    <div class="col-sm-4" style="margin-left: -32px">
                        <asp:DropDownList ID="ddldepart" runat="server" CssClass="form-control" Font-Overline="False">
                           
                        </asp:DropDownList>
                    </div>
                    <label class="col-sm-2">Destination: <span class="rowred">*</span></label>
                    <div class="col-sm-4" style="margin-left: -50px">
                        <asp:DropDownList ID="ddldest" runat="server" CssClass="form-control" Font-Overline="False">
                          
                        </asp:DropDownList>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">Depart On: <span class="rowred">*</span></label>
                    <div class="col-sm-4" style="margin-left: -32px">
                        <asp:TextBox ID="txt_cal" runat="server" CssClass="form-control datepicker" placeholder="Depart On:"></asp:TextBox>

                    </div>
                    <label class="col-sm-2">Return: <span class="rowred">*</span></label>
                    <div class="col-sm-4" style="margin-left: -50px">
                        <asp:TextBox ID="txt_return" runat="server" ClientIDMode="Static" CssClass="form-control datepicker" placeholder="Return:" Enabled="false"></asp:TextBox>

                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2">
                        Adults
                        <br />
                        (Above 11 Year)
                    </label>
                    <div class="col-sm-2">
                        <asp:DropDownList ID="ddladult" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <label class="col-sm-2">
                        Children
                        <br />
                        (2-11 Year)
                    </label>
                    <div class="col-sm-2">
                        <asp:DropDownList ID="ddlchildren" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                            <asp:ListItem Value="2">2</asp:ListItem>
                            <asp:ListItem Value="3">3</asp:ListItem>
                            <asp:ListItem Value="4">4</asp:ListItem>
                            <asp:ListItem Value="5">5</asp:ListItem>
                            <asp:ListItem Value="6">6</asp:ListItem>
                            <asp:ListItem Value="7">7</asp:ListItem>
                            <asp:ListItem Value="8">8</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <label class="col-sm-2">
                        Infrant
                        <br />
                        (< 2 Year)
                    </label>
                    <div class="col-sm-2">
                        <asp:DropDownList ID="ddlinf" runat="server" CssClass="form-control">
                            <asp:ListItem Value="0">0</asp:ListItem>
                            <asp:ListItem Value="1">1</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-6 col-sm-offset-5">
                        <asp:Button ID="btnsearch" runat="server" Text="Search Flight" CssClass="btn btn-primary" OnClick="btnsearch_Click" />

                    </div>
                </div>
            </div>

        </div>
    </div>





</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <title>AirLines</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
    <script type="text/javascript" src="js/jquery-1.5.2.js"></script>
    <script type="text/javascript" src="js/cufon-yui.js"></script>
    <script type="text/javascript" src="js/cufon-replace.js"></script>
    <script type="text/javascript" src="js/Cabin_400.font.js"></script>
    <script type="text/javascript" src="js/tabs.js"></script>
    <script type="text/javascript" src="js/jquery.jqtransform.js"></script>
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
            width: 275px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=radioflighttrip.ClientID %>').change(function () {
                var checked_radio = $("[id*=radioflighttrip] input:checked");
                var value = checked_radio.val();
                if (value == "OneWay") {
                    $("#txt_return").val("");
                     $("#txt_return").attr("disabled", "disabled"); 
                } else {
                      $("#txt_return").removeAttr("disabled"); 
                }
            });
        });
    </script>

</asp:Content>


