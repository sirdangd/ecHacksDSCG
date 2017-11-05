<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EcHacks.Login" %>
<!doctype html>

<html lang="en">
<head>
	<meta charset="utf-8" />
	
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>LogIn</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    
    <link href="assets/css/paper-dashboard.css" rel="stylesheet"/>

    
    <link href="assets/css/logInStyle.css" rel="stylesheet" />

    
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/themify-icons.css" rel="stylesheet">

    <script src="assets/js/logIn.js"></script>

</head>
<body>

    <div class="container">
        <div class="card card-container">
            <!-- <img class="profile-img-card" src="//lh3.googleusercontent.com/-6V8xOA6M7BA/AAAAAAAAAAI/AAAAAAAAAAA/rzlHcD0KYwo/photo.jpg?sz=120" alt="" /> -->
            <img id="profile-img" class="profile-img-card" src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
            <p id="profile-name" class="profile-name-card"></p>
            <form class="form-signin" runat="server">
                <span id="reauth-email" class="reauth-email"></span>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Usernmae" autofocus></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Password" TextMode="Password" ></asp:TextBox>
                <div id="remember" class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Remember me
                    </label>
                    
                </div>
                <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block btn-signin" style="color:white; padding:5px;" runat="server" Text="Log in" OnClick="Button1_Click" />
                <br />
                <br /><asp:Button ID="Button2" class="btn btn-lg btn-primary btn-block btn-signin" style="color:white; padding:5px;" runat="server" Text="Register" OnClick="Button2_Click" />
                
            </form><!-- /form -->
            <a href="#" class="forgot-password">
                Forgot the password?
            </a>
        </div><!-- /card-container -->
    </div><!-- /container -->
</body>

</html>