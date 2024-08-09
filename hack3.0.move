
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="icon" href="/images/favicon-enhanced.png" />
  <link rel="stylesheet" href="css/login.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" />

  <style>
    /* Custom CSS for alert messages */
    .alert {
      display: none;
      position: fixed;
      top: 10%;
      left: 50%;
      transform: translate(-50%, -50%);
      padding: 20px;
      background-color: #4caf50;
      color: white;
      text-align: center;
      border-radius: 6px;
      box-shadow: 0px 0px 10px 0px #262626;
      opacity: 0.8;
      transition: all 0.3s ease-in-out;
      z-index: 1;
    }

    #emptyFieldsAlert {
      background-color: red;
    }
    
    input[type="password"]::-webkit-credentials-auto-fill-button,
    input[type="password"]::-webkit-contacts-auto-fill-button,
    input[type="password"]::-ms-reveal {
        display: none;
      }
  </style>
  <title>Sukoon - Login</title>
</head>
  <body onload="myfunction()">
    <div id="load">
      <div
        style="
          background-color: white;
          height: 25vh;
          width: 100%;
          position: relative;
          top: -70px;
        "></div>
  </div>

  <div class="alert" id="emptyFieldsAlert" style="display: none">
    Please fill in all fields!
  </div>
  <img src="../images/signupill.png" alt="" />
  <div class="login">
    <div class="welcome">
      <h1 class="titletext">Welcome Back &#x1F917</h1>
      <span>Please enter your details.</span>
    </div>
    <div class="inputs">
      <span>Email<br /></span>
      <input class="inputbox" placeholder="Enter your email" id="loginEmail" /><br />
      <span>Password<br /></span>
      <input type="password" class="inputbox" placeholder="••••••••" id="loginPassword" />
      <i class="fas fa-eye-slash" id="toggleLoginPassword" style="margin-left: -30px; cursor: pointer;"></i>
    </div>
    <div class="forgotpass">
      <span>Forgot Password</span>
    </div>
    <p class="back"><a class="tag" href="../index.html">&#8592; Back</a></p>
    <div class="button">
      <input type="button" class="signin" value="Sign in" id="loginButton" />
    </div>
    <div class="signupline">
      <span>Don't have an account?</span>
      <span class="signupbutton"> Sign up</span>
    </div>
  </div>
  <div class="register">
    <div class="welcome">
      <h1 class="titletext">Create an account</h1>
      <span>Let's get started.</span>
    </div>
    <div class="inputs">
      <span>Username<br /></span>
      <input class="inputbox" placeholder="Enter your username" id="signupUsername" /><br />
      <span>Email<br /></span>
      <input class="inputbox" placeholder="Enter your email" id="signupEmail" /><br />
      <span>Password<br /></span>
      <input type="password" class="inputbox" placeholder="••••••••" id="signupPassword" />
      <i class="fas fa-eye-slash" id="toggleSignupPassword" style="margin-left: -30px; cursor: pointer;"></i>
    </div>
    <p class="back-1"><a class="tag1" href="../index.html">&#8592; Back</a></p>
    <div class="button">
      <input type="button" class="signin" value="Sign up" id="signupButton" />
    </div>
    <div class="signupline">
      <span>Already have an account?</span>
      <span class="signinbutton"> Sign in</span>
    </div>
  </div>

  <!-- Alert messages -->
  <div class="alert" id="loginAlert">Sign in successful!</div>
  <div class="alert" id="signupAlert">Sign up successful!</div>

  <script>
    const signin_btn = document.querySelector(".signinbutton");
    const signup_btn = document.querySelector(".signupbutton");
    const register = document.querySelector(".register");
    const login = document.querySelector(".login");
    signup_btn.addEventListener("click", () => {
      register.style.display = "block";
      login.style.display = "none";
    });
    signin_btn.addEventListener("click", () => {
      register.style.display = "none";
      login.style.display = "block";
    });
    loginButton.addEventListener("click", () => {
      const emailInput = document.getElementById("loginEmail");
      const passwordInput = document.getElementById("loginPassword");
      const loginAlert = document.getElementById("loginAlert");
      if (emailInput.value.trim() === "" || passwordInput.value.trim() === "") {
        const emptyFieldsAlert = document.getElementById("emptyFieldsAlert");
        emptyFieldsAlert.style.display = "block";
        setTimeout(() => {
          emptyFieldsAlert.style.display = "none";
        }, 3000);
      } else {
        emailInput.value = ""; // Clear email input
        passwordInput.value = ""; // Clear password input

        loginAlert.style.display = "block";
        setTimeout(() => {
          loginAlert.style.display = "none";
        }, 3000);
      }
    });

    signupButton.addEventListener("click", () => {
      const usernameInput = document.getElementById("signupUsername");
      const emailInput = document.getElementById("signupEmail");
      const passwordInput = document.getElementById("signupPassword");
      const signupAlert = document.getElementById("signupAlert");

      if (
        usernameInput.value.trim() === "" ||
        emailInput.value.trim() === "" ||
        passwordInput.value.trim() === ""
      ) {
        const emptyFieldsAlert = document.getElementById("emptyFieldsAlert");
        emptyFieldsAlert.style.display = "block";
        setTimeout(() => {
          emptyFieldsAlert.style.display = "none";
        }, 3000);
      } else {
        usernameInput.value = ""; // Clear username input
        emailInput.value = ""; // Clear email input
        passwordInput.value = ""; // Clear password input

        signupAlert.style.display = "block";
        setTimeout(() => {
          signupAlert.style.display = "none";
        }, 3000);
      }
    });

  </script>
  <script>
    const preloader = document.getElementById("load");
    function myfunction() {
      preloader.style.display = "none";
    }
    const toggleLoginPassword = document.querySelector("#toggleLoginPassword");
    const loginPassword = document.getElementById("loginPassword");

    toggleLoginPassword.addEventListener("click", function (e) {

      if(loginPassword.type == "text"){
        loginPassword.type = "password";
        toggleLoginPassword.className = "fas fa-eye-slash";
      }
      else if(loginPassword.type == "password"){
        loginPassword.type = "text";
        toggleLoginPassword.className = "fas fa-eye";
      }
    });

    const toggleSignupPassword = document.querySelector("#toggleSignupPassword");
    const signupPassword = document.getElementById("signupPassword");

    toggleSignupPassword.addEventListener("click", function (e) {

      if(signupPassword.type == "text"){
        signupPassword.type = "password";
        toggleSignupPassword.className = "fas fa-eye-slash";
      }
      else if(signupPassword.type == "password"){
        signupPassword.type = "text";
        toggleSignupPassword.className = "fas fa-eye";
      }
    });
  </script>

</body>
</html>