<%--
  Created by IntelliJ IDEA.
  User: ljjtpcn@163.com
  Date: 2022/10/12
  Time: 16:34
  To change this template use File | Settings | File Templates.
    isELIgnored="false" 关闭忽略EL表达式, 否则不会解析el表达式
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <link href="./img/图书馆.svg" rel="SHORTCUT ICON"/>
        <title>登录</title>
        <!-- import CSS -->
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <link rel="stylesheet" href="./css/login-new.css">
    </head>


    <body>
        <div id="app">
            <el-container>
                <el-header>
                    <el-row>
                        <el-col :span="1">
                            <a href="https://wiki.twopair.cn">
                                <img src="./img/图书馆.svg" alt="图片挂掉了">
                            </a>
                        </el-col>
                    </el-row>
                </el-header>

                <el-main>

                </el-main>
            </el-container>
        </div>
    </body>


    <!-- import Vue before Element -->
    <script src="https://unpkg.com/vue@2/dist/vue.js"></script>
    <!-- import JavaScript -->
    <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    <script src="js/login-new.js"></script>
</html>