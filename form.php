<head>
  <link href="assets/css/form.css" rel="stylesheet"/>
  <script src="https://www.gstatic.com/firebasejs/4.6.1/firebase.js"></script>
<script>
  // Initialize Firebase
  var config = {
    apiKey: "AIzaSyBjeAaWWJC70jPUAkm5NVCIWTX3oGqoP_Y",
    authDomain: "summitto-dfe2c.firebaseapp.com",
    databaseURL: "https://summitto-dfe2c.firebaseio.com",
    projectId: "summitto-dfe2c",
    storageBucket: "summitto-dfe2c.appspot.com",
    messagingSenderId: "865557800298"
  };
  firebase.initializeApp(config);
</script>
  <link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,700' rel='stylesheet' type='text/css'>
  <script type="text/javascript" src="assets/js/app.js"></script>

</head><!--Google Font - Work Sans-->
<div class="container">
  <div class="profile">
    <button class="profile__avatar" id="toggleProfile">
     <img src="https://pbs.twimg.com/profile_images/554631714970955776/uzPxPPtr.jpeg" alt="Avatar" />
    </button>
    <div class="profile__form">
      <div class="profile__fields">
        <div class="field">
          <input type="text" id="fieldUser" class="input" required pattern=.*\S.* />
          <label for="fieldUser" class="label">Email</label>
        </div>
        <div class="field">
          <input type="password" id="fieldPassword" class="input" required pattern=.*\S.* />
          <label for="fieldPassword" class="label">Password</label>
        </div>
        <div class="profile__footer">
          <button id="btnlogin" class="btn">Login</button>
          <button id="btnregister" class="btn">Register</button>
          <button id="btnlogout" class="btn">Logout</button>
<script>
/* Simple VanillaJS to toggle class */

document.getElementById("toggleProfile").addEventListener("click", function() {
  [].map.call(document.querySelectorAll(".profile"), function(el) {
    el.classList.toggle("profile--open");
  });
});

</script>
          <script type="text/javascript" src="assets/js/app.js"></script>
        </div>
      </div>
     </div>
  </div>
</div>
