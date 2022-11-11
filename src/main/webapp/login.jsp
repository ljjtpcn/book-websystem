<%@ page import="java.sql.SQLOutput" %><%--
  Created by IntelliJ IDEA.
  User: ljjtpcn@163.com
  Date: 2022/9/20
  Time: 20:22
  To change this template use File | Settings | File Templates.
    isELIgnored="false" 关闭忽略EL表达式, 否则不会解析el表达式
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>login</title>
        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/login.css"/>
        <link href="./img/图书馆.svg" rel="SHORTCUT ICON"/>
        <!-- element引入样式 -->
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <!-- 引入组件库 -->
        <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    </head>
    <body>

        <c:if test="${!(empty requestScope.login_msg)}">
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert"
                        aria-hidden="true">
                    &times;
                </button>
                    ${requestScope.login_msg}
            </div>
        </c:if>
        <div class="mainbody middle">
            <form class="form-box front" id="login_form" action="./loginServlet" method="post">
                <div>
                    <h1>LOGIN</h1>
                </div>
                <div>
                    <input class="input-normal" type="text" id="username" name="username" placeholder="UserAccount"/>
                    <input class="input-normal" type="password" id="password" name="password" placeholder="PassWord"/>
                    <button class="btn-submit" type="button" id="login">
                        登陆
                    </button>
                </div>
                <div>
                    <p style="margin-top: 40px">If you don't have account.Please</p>
                    <p>Click here to <a id="signup" href="register.jsp">注册</a></p>
                </div>
            </form>
        </div>
        <script src="./js/login.js"></script>
    </body>

</html>


