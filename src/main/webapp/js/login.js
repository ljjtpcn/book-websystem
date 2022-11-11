var loginButton = document.getElementById("login");
var loginForm = document.getElementById("login_form");

loginButton.onclick = login;

function login(){
    let username = document.getElementById("username").value;
    let password = document.getElementById("password").value;
    if(username && password)
        loginForm.submit();
}
