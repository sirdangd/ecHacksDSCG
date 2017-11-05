<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="notifications.aspx.cs" Inherits="EcHacks.notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
    <div class="row">
        <br>
        <div class="col-lg-7 col-sm-6">
            <div class="card">
                <div class="content">
                    <div class="row">

                        <div class="col-xs-5">
                            <div class="icon-big icon-warning text-center">
                                <img id="amazon" src="assets/img/amazon.png">
                                <h4 id="offerBody" style="font-size : 25px; float: left; margin-top: 5px; margin-bottom : 5px;"> 15% Off </h1>
                            </div>
                        </div>
                        <div class="col-xs-7">
                            <div class="numbers">
                                <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="3000 Points" OnClick="button1_Click" />
                                
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <hr />
                        <div class="stats">
                            <i class="ti-reload"></i> Get 15% off your next purchase over $50!

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <br>
        <div class="col-lg-7 col-sm-6">
            <div class="card">
                <div class="content">
                    <div class="row">

                        <div class="col-xs-5">
                            <div class="icon-big icon-warning text-center">
                                <img id="amazon" src="assets/img/TD-Bank.png">
                                <h4 id="offerBody" style="font-size : 25px; float: left; margin-top: 5px; margin-bottom : 5px; color: green;"> $50 Dollars </h1>
                            </div>
                        </div>
                        <div class="col-xs-7">
                            <div class="numbers">
                                <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="15000 Points" OnClick="button2_Click"  />

                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <hr />
                        <div class="stats">
                            <i class="ti-reload"></i> Get $50 cash from TD!

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <br>
        <div class="col-lg-7 col-sm-6">
            <div class="card">
                <div class="content">
                    <div class="row">

                        <div class="col-xs-5">
                            <div class="icon-big icon-warning text-center">
                                <img id="amazon" src="assets/img/CanadaLogo.png">
                                <h4 id="offerBody" style="font-size : 25px; float: left; margin-top: 5px; margin-bottom : 5px; color: black;"> $800 Dollars </h1>
                            </div>
                        </div>
                        <div class="col-xs-7">
                            <div class="numbers">
                                <asp:Button ID="Button3" runat="server" class="btn btn-success" Text="10000 Points" OnClick="button3_Click" />
                               
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <hr />
                        <div class="stats">
                            <i class="ti-reload"></i> Get $800 towards your RRSP!

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <br>
        <div class="col-lg-7 col-sm-6">
            <div class="card">
                <div class="content">
                    <div class="row">

                        <div class="col-xs-5">
                            <div class="icon-big icon-warning text-center">
                                <img id="amazon" src="assets/img/CanadaLogo.png">
                                <h4 id="offerBody" style="font-size : 25px; float: left; margin-top: 5px; margin-bottom : 5px; color: black;"> $800 Dollars </h1>
                            </div>
                        </div>
                        <div class="col-xs-7">
                            <div class="numbers">
                                <asp:Button ID="Button4" runat="server"  class="btn btn-success" Text="10000 Points" OnClick="button4_Click"  />

                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <hr />
                        <div class="stats">
                            <i class="ti-reload"></i> Get $800 towards your RESP!

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <style>
        #Button1 {
            font-size: 18px;
            margin-top: 2%;
        }

        #Button2 {
            font-size: 18px;
            margin-top: 2%;
        }
        #Button3 {
            font-size: 18px;
            margin-top: 2%;
        }
        #Button4 {
            font-size: 18px;
            margin-top: 2%;
        }
        #amazon {
            max-width: 80%;
            max height: 80%;
            float: left;
            overflow: hidden;
        }

    </style>
    </div>
</asp:Content>
