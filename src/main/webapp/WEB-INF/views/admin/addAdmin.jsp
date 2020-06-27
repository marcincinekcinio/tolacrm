<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 12.06.2020
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CRM</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">
</head>
<body>
<div class="container-fluid">
    <div id="login">
        <div id="leftbar">
            <img src="/img/tola.jpeg">
        </div>
        <div style="clear:both">
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
    <div class="content">
<form:form method="post" modelAttribute="admin">
    <form:hidden path="id"/>
    <div class="form-group">
        <label for="username">Użytkownik:</label>
        <form:input type="text" path="username" class="form-control" id="username" aria-describedby="emailHelp"/>
        <form:errors path="username"/>
        <small id="username" class="form-text text-muted">Minimalnie 5 znakow</small>
    </div>
    <div class="form-group">
        <label for="passwodrd">Hasło:</label>
        <form:password  path="password" class="form-control" id="passwodrd"/>
        <form:errors path="password"/>
    </div>
    <div class="form-group">
        <label for="username">Imię:</label>
        <form:input type="text" path="firstname" class="form-control" id="firstname" aria-describedby="emailHelp"/>
        <form:errors path="firstname"/>
    </div>

    <div class="form-group">
        <label for="username">Nazwisko:</label>
        <form:input type="text" path="lastname" class="form-control" id="lastname" aria-describedby="emailHelp"/>
        <form:errors path="lastname"/>
    </div>

    <button type="submit" class="btn btn-success">Dodaj</button>
</form:form>
    </div>
</div>

</body>
</html>
