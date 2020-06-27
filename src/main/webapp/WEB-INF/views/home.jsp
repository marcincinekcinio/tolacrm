<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 06.06.2020
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>CRM</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
</head>
<body>

<div class="container-fluid">
    <div id="login">
        <div id="leftbar">
            <img src="/img/tola.jpeg">
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="sidebar">

        <nav class="nav flex-column">
            <a class="nav-link active" href="/admin/all">Lista administratorów</a>
            <a class="nav-link" href="/admin/add">Dodaj nowego administratora</a>
            <a class="nav-link" href="/client/all">Klienci</a>
            <a class="nav-link" href="/client/add">Dodaj nowego klienta</a>
            <a class="nav-link" href="/assortment/all">Asortyment</a>
            <a class="nav-link" href="/assortment/add">Dodaj nowy asortyment</a>
            <a class="nav-link" href="/orders/all">Lista zamówień</a>
            <a class="nav-link" href="/orders/add">Dodaj nowe zamówienie</a>
        </nav>

    </div>
    <div class = "content">

        Witaj w naszym CRM ! :)

    </div>



</div>
</body>
</html>
