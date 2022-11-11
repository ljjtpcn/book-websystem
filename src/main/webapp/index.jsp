<%--
  Created by IntelliJ IDEA.
  User: ljjtpcn@163.com
  Date: 2022/8/26
  Time: 11:16
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
        <link rel="stylesheet" href="./css/main.css">
        <!-- 轮播图css -->
        <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css">
        <!-- 网站名称以及logo -->
        <link href="./img/图书馆.svg" rel="SHORTCUT ICON"/>
        <title>去马李戴孙图书网</title>
    </head>

    <body class="main">
        <div class="container-fluid">
            <!-- 1.网上书城头部 -->
            <div class="row">
                <div class="col-lg-1">
                    <a href="https://wiki.twopair.cn">
                        <img src="./img/图书馆.svg" alt="图片挂掉了">
                    </a>
                </div>
                <div class="col-lg-4 col-lg-offset-7">
                    <ul class="nav nav-pills">
                        <li><a href="#"><img src="./img/购物车.png" width="26" height="23" alt="图片挂掉了">购物车</a>
                        </li>
                        <li><a href="#">帮助中心</a></li>

                        <c:choose>
                            <c:when test="${empty sessionScope.username}">
                                <li><a href="login.jsp" id="loginOrRegister">
                                    登录|注册
                                </a></li>
                            </c:when>
                            <c:otherwise>
                                <li><a href="person.jsp" id="my">
                                    ${sessionScope.username}
                                </a></li>
                                <li><a href="outServlet" id="out">
                                        退出
                                </a></li>
                            </c:otherwise>
                        </c:choose>
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
            <form id="search-form" action="#" method="post">
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
            <!-- 4.网上书城首页轮播图 -->
            <div class="row top20">
                <div class="swiper">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="./img/ad/index_ad0.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="./img/ad/index_ad1.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="./img/ad/index_ad2.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="./img/ad/index_ad3.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="./img/ad/index_ad4.jpg" alt=""></div>
                        <div class="swiper-slide"><img src="./img/ad/index_ad5.jpg" alt=""></div>
                    </div>
                    <!-- 分页器 -->
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <!-- 5. 公告板和本周热卖 -->
            <div class="row top20">
                <div class="col-lg-6">
                    <img src="./img/billboard.gif" alt="图片挂掉了"><br>
                    <p style="color: red; font-size: 19px;">
                        尊敬的阅读用户您好:</br>
                        目前阅读随机选取部分用户推出免费书城，暂未全量上线,建议您留意后续版本更新。<br>
                        感谢您对阅读的支持，有您的陪伴，我们会成长的更快！<br>
                    </p>
                </div>

                <div class="col-lg-6" id="content">
                    <img src="./img/firegif.gif" alt="图片挂掉了"><br>

                    <img src="./img/101.jpg" alt="图片挂掉了">
                    <img src="./img/103.jpg" alt="图片挂掉了">
                    <img src="./img/105.jpg" alt="图片挂掉了">
                </div>
            </div>
            <!-- 6. 网上书城底部 -->
            <footer class="footer">
                <div class="container-fluid">
                    <p>Posted by: <a href="">ljjtpcn</a></p>
                    <p>Contact information: <a href="ljjtpcn@163.com">ljjtpcn@163.com</a>.</p>
                </div>
            </footer>
        </div>


        <!-- 轮播图js -->
        <script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>
        <script type="text/javascript" src="./js/swiperPic.js"></script>
        <script type="text/javascript" src="./js/index.js"></script>
    </body>

</html>
