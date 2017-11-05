<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Goals.aspx.cs" Inherits="EcHacks.Goals" %>

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
                                    <h4 style="font-size: 25px; text-align: left; margin-top: 5px; margin-bottom: 5px; color: #2196F3;">Maintain $2000 in your chequing account
                                    </h4>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <span class="label label-success">1500 Points</span>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />

                            <div class="progress" style="width: 100%;">
                                <asp:HiddenField ID="a" runat="server" />
                                <div id="1" class="progress-bar" role="progressbar" aria-valuenow="72" aria-valuemin="0" aria-valuemax="100" style="width: 72%;">
                                    72%
                                </div>
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
                                    <h4 style="font-size: 25px; text-align: left; margin-top: 5px; margin-bottom: 5px; color: #2196F3;">Contribute $650 to your RRSP  
                                    </h4>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <span class="label label-success">2200 Points</span>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />

                            <div class="progress" style="width: 100%;">
                                <asp:HiddenField ID="b" runat="server" />
                                <div id="2" class="progress-bar" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100" style="width: 35%;">
                                    35%
                                </div>
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
                                    <h4 style="font-size: 25px; text-align: left; margin-top: 5px; margin-bottom: 5px; color: #2196F3;">Contribute $650 to your child's RESP 
                                    </h4>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <span class="label label-success">1500 Points</span>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />

                            <div class="progress" style="width: 100%;">
                                <asp:HiddenField ID="c" runat="server" />
                                <div id="3" class="progress-bar" role="progressbar" aria-valuenow="47" aria-valuemin="0" aria-valuemax="100" style="width:47%;">
                                    47%
                                </div>
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
                                    <h4 style="font-size: 25px; text-align: left; margin-top: 5px; margin-bottom: 5px; color: #2196F3">Maintain $5000 in your chequing account
                                    </h4>
                                </div>
                            </div>
                            <div class="col-xs-7">
                                <div class="numbers">
                                    <span class="label label-success">1500 Points</span>
                                </div>
                            </div>
                        </div>
                        <div class="footer">
                            <hr />

                            <div class="progress" style="width: 100%;">
                                <asp:HiddenField ID="d" runat="server" />
                                <div id="4" class="progress-bar" role="progressbar" aria-valuenow="91" aria-valuemin="0" aria-valuemax="100" style="width: 91%;">
                                    91%
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <style>
        #button2 {
            font-size: 18px;
            margin-top: 2%;
        }

        #amazon {
            max-width: 80%;
            max height: 80%;
            float: left;
            overflow: hidden;
        }

        #1 {
        }

        #2 {
        }

        #3 {
        }

        #4 {
        }
    </style>
</asp:Content>
