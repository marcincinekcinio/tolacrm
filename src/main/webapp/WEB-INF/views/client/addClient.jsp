<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 13.06.2020
  Time: 20:11
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


<form:form method="post" modelAttribute="client">
    <div class="form-group">
        <label for="firstName">Imię</label>
        <form:input type="text" path="firstName" class="form-control" id="firstName" aria-describedby="emailHelp"/>
        <form:errors path="firstName"/><br>
    </div>
    <div class="form-group">
        <label for="lastName">Nazwisko</label>
        <form:input type="text" path="lastName" class="form-control" id="lastName"/>
        <form:errors path="lastName"/>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <form:input type="text" path="email" class="form-control" id="email" aria-describedby="emailHelp"/>
        <form:errors path="email"/>
    </div>

    <div class="form-group">
        <label for="addres">Adres zamieszkania</label>
        <form:input type="text" path="address" class="form-control" id="addres" aria-describedby="emailHelp"/>
        <form:errors path="address"/>
    </div>

    <button type="submit" class="btn btn-success">Dodaj</button>
</form:form>
        </div>
    </div>
</body>
</html>
