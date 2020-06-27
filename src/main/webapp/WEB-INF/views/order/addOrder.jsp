<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 20.06.2020
  Time: 18:44
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
<form:form method="post" modelAttribute="orders">
    <div class="form-group">
        <label for="data">Data:</label>
        <form:input type="text" path="data" class="form-control" id="data" aria-describedby="emailHelp"/>
        <form:errors path="data"/><br>
    </div>
    <div class="form-group">
        <label for="hour">Godzina:</label>
        <form:input type="text" path="hour" class="form-control" id="hour"/>
        <form:errors path="hour"/>
    </div>
    <div class="form-group">
        <label for="client.id">Klient:</label>
        <form:select path="client.id" items="${clientsList}" itemLabel="fullName" itemValue="id"  class="form-control" id="client.id" />
        <form:errors path="client"/>
    </div>

    <button type="submit" class="btn btn-success">Dodaj</button>
</form:form>
        </div>
    </div>

</body>
</html>
