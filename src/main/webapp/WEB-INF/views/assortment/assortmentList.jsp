<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 20.06.2020
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CRM</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<c:url value="/css/style.css"/>">

    <script>
        function confirmDelete(id ,name) {
            if(confirm("Usuń produkt \"" + name + "\"")){
                window.location.href ="/assortment/delete/" + id;
            }
        }
    </script>
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
<table class="table">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Id:</th>
        <th scope="col">Nazwa:</th>
        <th scope="col">Modyfikuj:</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="assortments" items="${assortments}">
        <tr>
            <th scope="row">${assortments.id}</th>
            <td>${assortments.name}</td>
            <td>
                <a href="/assortment/update/${assortments.id}">Edytuj</a>
                <a href="#" onclick="confirmDelete('${assortments.id}', '${assortments.name}')">Usuń</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
        </div>
    </div>
</body>
</html>
