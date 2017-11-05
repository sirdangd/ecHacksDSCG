<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="EcHacks.user" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="card card-user">
                        <div class="image">
                            <img src="assets/img/background.jpg" alt="..." />
                        </div>
                        <div class="content">
                            <div class="author">
                                <img class="avatar border-white" src="assets/img/faces/face-2.jpg" alt="..." />
                                <h4 class="title">Jason Smith<br />
                                    <a href="#"><small>@TDGreen</small></a>
                                </h4>
                            </div>
                            <p class="description text-center">
                                School Teacher
                            </p>
                        </div>
                        <hr>

                        <div class="text-center">
                            <div class="row">
                                <div class="col-md-3 col-md-offset-1">
                                    <h5><asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                                        <small>Points</small></h5>
                                </div>
                                <div class="col-md-4">
                                    <h5><asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
                                        <small>Goals Achived</small></h5>
                                </div>
                                <div class="col-md-3">
                                    <h5><asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
                                        <small>Value Saved</small></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Family Members</h4>
                        </div>
                        <div class="content">
                            <ul class="list-unstyled team-members">
                                <li>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="avatar">
                                                <img src="assets/img/faces/face-0.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            Billy Smith
                                                        <span class="text-muted"><small></small></span>
                                        </div>

                                        <div class="col-xs-3 text-right">
                                            <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="avatar">
                                                <img src="assets/img/faces/face-4.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            Elizabeth Smith
                                                        <br />
                                        </div>

                                        <div class="col-xs-3 text-right">
                                            <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="row">
                                        <div class="col-xs-3">
                                            <div class="avatar">
                                                <img src="assets/img/faces/face-3.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                            </div>
                                        </div>
                                        <div class="col-xs-6">
                                            Jessica Smith
                                                        <br />
                                        </div>

                                        <div class="col-xs-3 text-right">
                                            <btn class="btn btn-sm btn-success btn-icon"><i class="fa fa-envelope"></i></btn>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-7">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Edit Profile</h4>
                        </div>
                        <div class="content">
                            <form>
                                <div class="row">
                                    
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Username</label>
                                            <asp:TextBox ID="TextBox1" class="form-control border-input" placeholder="Username" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email address</label>
                                            <input type="email" class="form-control border-input" placeholder="Email">
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>First Name</label>
                                            <asp:TextBox ID="TextBox2" class="form-control border-input" placeholder="First Name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Last Name</label>
                                            <asp:TextBox ID="TextBox3" class="form-control border-input" placeholder="Last Name" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label>Address</label>
                                            <asp:TextBox ID="TextBox4" class="form-control border-input" placeholder="Home Address" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>City</label>
                                            <asp:TextBox ID="TextBox5" class="form-control border-input" placeholder="City" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Country</label>
                                            <asp:TextBox ID="TextBox6" class="form-control border-input" placeholder="Country" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Postal Code</label>
                                            <asp:TextBox ID="TextBox7" class="form-control border-input" placeholder="Postal Code" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <asp:Button ID="Button1" class="btn btn-info btn-fill btn-wd" runat="server" Text="Update" OnClick="Button1_Click" />
                                </div>
                                <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>

</asp:Content>
