<%--
  Created by IntelliJ IDEA.
  User: ljjtpcn@163.com
  Date: 2022/9/20
  Time: 21:31
  To change this template use File | Settings | File Templates.
    isELIgnored="false" 关闭忽略EL表达式, 否则不会解析el表达式
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- 必须的 meta 标签 -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <!-- 自定义css -->
        <link rel="stylesheet" href="./css/register.css">
        <!-- 轮播图css -->
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css">
        <!-- 网站名称以及logo -->
        <link href="./img/register.ico" rel="SHORTCUT ICON"/>
        <title>去马李戴孙图书网</title>
    </head>

    <body class="main">
        <div class="alert alert-success" id="register_msg" style="display:none">成功！很好地完成了注册。</div>
        <div class="container-fluid">
            <!-- 1.网上书城头部 -->
            <div class="row">
                <div class="col-lg-1">
                    <a href="https://wiki.twopair.cn">
                        <img src="./img/图书馆.svg" alt="图片挂掉了">
                    </a>
                </div>
                <div class="col-lg-3 col-lg-offset-8">
                    <ul class="nav nav-pills">
                        <li><a href="#"><img src="./img/购物车.png" width="26" height="23" alt="图片挂掉了">购物车</a>
                        </li>
                        <li><a href="#">帮助中心</a></li>
                        <li><a href="#">我的账户</a></li>
                        <li><a href="login.jsp">登录</a></li>
                    </ul>
                </div>
            </div>
            <!-- 2. 网上书城菜单列表 -->
            <div class="row">
                <div class="col-lg-9 col-lg-offset-1">
                    <ul class="nav nav-pills">
                        <li class="font_14"><a href="#">生活百科</a></li>
                        <li class="font_14"><a href="#">计算机</a></li>
                        <li class="font_14"><a href="#">文学</a></li>
                        <li class="font_14"><a href="#">生活</a></li>
                        <li class="font_14"><a href="#">外语</a></li>
                        <li class="font_14"><a href="#">经管</a></li>
                        <li class="font_14"><a href="#">励志</a></li>
                        <li class="font_14"><a href="#">社科</a></li>
                        <li class="font_14"><a href="#">学术</a></li>
                        <li class="font_14"><a href="#">少儿</a></li>
                        <li class="font_14"><a href="#">艺术</a></li>
                        <li class="font_14"><a href="#">原版</a></li>
                        <li class="font_14"><a href="#">科技</a></li>
                        <li class="font_14"><a href="#">科技</a></li>
                        <li class="font_14 active"><a href="#">全部商品目录</a></li>
                    </ul>
                </div>
            </div>
            <!-- 3. 搜索 -->
            <form id="search-form">
                <div class="row top10">
                    <div class="col-lg-3 col-lg-offset-9">
                        <div class="input-group">
                            <input type="text" class="form-control" name="search_text" placeholder="搜索内容">
                            <span class="input-group-btn">
                            <button class="btn btn-success" id="search_button" type="button">
                                Search
                            </button>
                        </span>
                        </div>
                    </div>
                </div>
            </form>

            <!-- 4. 注册表单 -->
            <div class="row top20">
                <div class="col-lg-5 col-lg-offset-3">
                    <span id="username_error" class="col-lg-offset-8" style="display:none; font-size:15px; color: red">
                        非邮箱格式或该邮箱已注册!</span>
                    <form id="register-form" class="form-horizontal">
                        <div id="eid" class="form-group">
                            <label class="col-lg-2 control-label" for="inputEmail">会员邮箱</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputEmail" placeholder="请输入有效邮箱"
                                       name="username">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="name">会员名</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="name" placeholder="请输入会员名"
                                       name="name">
                            </div>
                        </div>
                        <div id="pwdid" class="form-group">
                            <label class="col-lg-2 control-label" for="inputPassword">密码</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" id="inputPassword" name="password"
                                       placeholder="请输入8-16位字母数字混合密码">
                            </div>
                        </div>
                        <div id="rePassword" class="form-group">
                            <label class="col-lg-2 control-label" for="rePwd">重复密码</label>
                            <div class="col-lg-10">
                                <input type="password" class="form-control" id="rePwd" name="rePassword"
                                       placeholder="请再次重复密码">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">性别</label>
                            <label class="checkbox-inline">
                                    <input type="radio" name="gender" value="1" checked>男
                            </label>
                            <label class="checkbox-inline">
                                <input type="radio" name="gender" value="0">女
                            </label>
                        </div>
                        <div id="telid" class="form-group">
                            <label class="col-lg-2 control-label" for="inputTel">联系电话</label>
                            <div class="col-lg-10">
                                <input type="text" class="form-control" id="inputTel" name="telephone"
                                       placeholder="请输入联系电话">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" for="introduction">个人介绍</label>
                            <div class="col-lg-10">
                            <textarea id="introduction" name="introduction" class="form-control"
                                      rows="5"></textarea>
                            </div>
                        </div>


                        <div class="col-lg-offset-6">
                            <button id="ok" type="button" class="btn btn-success">提交注册</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
        <script src="./js/register.js"></script>
    </body>

</html>
