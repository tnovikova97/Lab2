<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Beans.WatchsBean" %><%--
  Created by IntelliJ IDEA.
  User: Татьяна
  Date: 13.11.2019
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products</title>
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
                        <div class="button-reg "><a href="logoutServlet"><span>Выйти</span></a></div>
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
        <div style="text-align: center; font-size: 20px; font-weight: 700; text-transform: uppercase; text-shadow: #1a1a1a"> Здравствуйте <%=request.getAttribute("login") %> !</div>

        <center>
            <h1>Watch Management</h1>
            <h2>
                <a href="new">Add New Watch</a>
                &nbsp;&nbsp;&nbsp;
                <a href="list">List All Watchs</a>

            </h2>
        </center>
        <div align="center">
            <table border="1" cellpadding="5">
                <caption><h2>List of Watchs</h2></caption>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Type</th>
                    <th>gender</th>
                    <th>price</th>
                    <th>Actions</th>
                </tr>
                <c:forEach var="watchsBean" items="${listWatch}">
                    <tr>
                        <td><c:out value="${watchsBean.id}" /></td>
                        <td><c:out value="${watchsBean.title}" /></td>
                        <td><c:out value="${watchsBean.type}" /></td>
                        <td><c:out value="${watchsBean.gender}" /></td>
                        <td><c:out value="${watchsBean.price}" /></td>
                        <td>
                            <a href="edit?id=<c:out value='${watchsBean.id}' />">Edit</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="delete?id=<c:out value='${watchsBean.id}' />">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>

</div>



<span style="color:red"><%=(request.getAttribute("errMessage") == null) ? ""
        : request.getAttribute("errMessage")%></span>

</body>
</html>
