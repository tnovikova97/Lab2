<%--
  Created by IntelliJ IDEA.
  User: Татьяна
  Date: 12.11.2019
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Home page</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css"/>
    <link rel="stylesheet" type="text/css" href="./css/feedback.css"/>
</head>

<body>

<section class="header-section">
    <!--    header-->
    <div class="header-top">
        <div class="container">
            <div class="row">
                <div class="logo">
                    <a href="./index.html" class="site-logo">
                        <img src="img/logo.png">
                    </a>
                </div>
                <div class="user-panel">
                    <div class="login">
                        <div class="button-reg js-button-reg"><span>Войти</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--            menu-->
    <nav class="main-navbar">
        <div class="container">
            <ul class="main-menu">
                <li><a href="#">Главная</a></li>
                <li><a href="#products">Украшения</a>
                    <ul class="sub-menu">
                        <li><a href="#">Серьги</a></li>
                        <li><a href="#">Подвески</a></li>
                        <li><a href="#">Кольца</a></li>
                        <li><a href="#">Браслеты</a></li>
                        <li><a href="#">Часы</a></li>
                    </ul>
                </li>
                <li><a href="#photo">Фотографии</a></li>
                <li><a href="feedback-page.html">Отзывы</a></li>
                <li><a href="#">Полезная информация</a></li>
                <li><a href="#">О компании</a></li>
                <button onclick="RandomTip()" class="tip_of_the_day-button js-btn-totd"><span> Совет дня </span>
                </button>

            </ul>
        </div>
    </nav>
</section>

<div class="feedback-page">

    <div class="feedback-page">

        <h1 style="font-size: 30px; font-weight: 700; text-transform: uppercase; text-shadow: #1a1a1a" >Регистрация прошла успешно!</h1>
        <p style="font-size: 25px; text-shadow: #1a1a1a"> Пожалуйста <a  href="index.html"> <span style="color: #ffbc7b; font-size: 25px; text-shadow: #1a1a1a">войдите</span> </a> для продолжения</p>

    </div>

</div>






</body>
</html>
