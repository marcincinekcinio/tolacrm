<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 16.06.2020
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/css/style.css"/>">
<html>
<head>
    <title>CRM</title>

    <script>
        function confirmDelete(id ,firstname, lastname) {
            if(confirm("Usuń użytkownika \"" + firstname + " " + lastname + "\"")){
                window.location.href ="/client/delete/" + id;
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
    <th scope="col">Imię:</th>
    <th scope="col">Nazwisko:</th>
    <th scope="col">Email:</th>
    <th scope="col">Adres:</th>
    <th scope="col">Edytuj</th>
    <th scope="col">Usuń</th>
</tr>
</thead>
<tbody>
<c:forEach var="client" items="${clients}">
    <tr>
        <th scope="row">${client.id}</th>
        <td>${client.firstName}</td>
        <td>${client.lastName}</td>
        <td>${client.email}</td>
        <td>${client.address}</td>
        <td><a href="/client/update/${client.id}">Edytuj</a> </td>
        <td><a href="#" onclick="confirmDelete('${client.id}', '${client.firstName}', '${client.lastName}')">Usuń</a> </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
        </div>
    </div>
</body>
</html>
