let emailInput = document.getElementById('inputEmail');
let passwordInput = document.getElementById('inputPassword');
let repwdInput = document.getElementById('rePwd');
let telInput = document.getElementById('inputTel');
let form = document.getElementById('register-form');
let ok = document.getElementById('ok');

emailInput.onblur = emailCheck;
passwordInput.onblur = passwordCheck;
telInput.onblur = telCheck;
repwdInput.onblur = rePasswordCheck;

/*表单效验通过则提交否则提示*/
ok.onclick = function () {
    console.log(emailCheck());
    console.log(passwordCheck());
    console.log(rePasswordCheck());
    console.log(telCheck());
    let ok = emailCheck() && passwordCheck() && rePasswordCheck() && telCheck();
    let registerBar = document.getElementById("register_msg");
    if (!ok) {
        alert("注册信息不完整!")
    } else {
        let param = new URLSearchParams();
        param.append('username', emailInput.value.trim());
        param.append('name', document.getElementById("name").value.trim());
        param.append('password', passwordInput.value.trim());
        param.append('gender', getRadioVal("gender"));
        param.append('telephone', document.getElementById("inputTel").value.trim());
        param.append('introduction', document.getElementById("introduction").value.trim());
        axios({
                method: "get",
                url: "./registerServlet",
                params: param
            }
        ).then(function (resp) {
            let ok = resp.data;
            let register = document.getElementById("register_msg");
            if(ok){
                register.setAttribute("class", "alert alert-success");
                register.innerText = "成功！很好地完成了注册。"
            }else{
                register.setAttribute("class", "alert alert-danger");
                    register.innerText = "服务器开小差了!请重新注册。"
            }
            registerBar.style.display = "";
        })
    }
}

/*邮箱校验*/
function emailCheck() {
    let email = emailInput.value.trim();
    const emailReg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
    let ok1 = emailReg.test(email);

    axios({
        method: "post",
        url: "./selectUserServlet",
        data: "username=" + emailInput.value.trim()
    }).then(function (resp) {
        let ok2 = resp.data;
        if (ok1 && ok2) {
            document.getElementById("username_error").style.display = "none";
        } else {
            let t = document.getElementById("username_error");
            if (ok1) {
                // 邮箱已注册
                t.innerText = "邮箱已注册,请更换"
            } else {
                t.innerText = "邮箱格式错误"
            }
            document.getElementById("username_error").style.display = "";
        }
        modifyClass("eid", ok1 && ok2);
        return ok1 && ok2;
    })
    return ok1;
}

/*密码效验*/
function passwordCheck() {
    let password = passwordInput.value.trim();
    const passwordReg = /^(?![^a-zA-Z]+$)(?!\\D+$).{8,16}$/;

    let ok = passwordReg.test(password);
    modifyClass("pwdid", ok);
    return ok;
}

/*重复密码校验*/
function rePasswordCheck() {
    if (!passwordCheck() || repwdInput.value.trim() !== passwordInput.value.trim()) {
        modifyClass("pwdid", false);
        modifyClass("rePassword", false);
        return false;
    } else {
        modifyClass("pwdid", true);
        modifyClass("rePassword", true);
        return true;
    }
}

/*电话号码校验*/
function telCheck() {
    let tel = telInput.value.trim();
    const telReg = /^1\d{10}$/;

    let ok = telReg.test(tel);
    modifyClass("telid", ok);
    return ok;
}

/*修改输入框边框颜色*/
function modifyClass(id, status) {
    let info = document.getElementById(id);
    if (status) {
        if (info.classList.contains("has-error")) {
            info.classList.remove("has-error")
        }
        if (!info.classList.contains("has-success")) {
            info.classList.add("has-success");
        }
    } else {
        if (info.classList.contains("has-success")) {
            info.classList.remove("has-success")
        }
        if (!info.classList.contains("has-error")) {
            info.classList.add("has-error");
        }
    }
}

/*获取选中单选框的值*/
function getRadioVal(nameVal) {
    let inputs = document.getElementsByName(nameVal);
    let checkVal = "";
    for (let i = 0, len = inputs.length; i < len; i++) {
        if (inputs[i].checked) {
            checkVal = inputs[i].value;
        }
    }
    return checkVal;
}