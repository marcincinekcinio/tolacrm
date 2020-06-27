<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 13.06.2020
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CRM</title>
    <script>
        function confirmDelete(id ,username) {
            if(confirm("Usuń użytkownika \"" + username + "\"")){
                window.location.href ="/admin/delete/" + id;
            }
        }
    </script>
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
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">Id:</th>
                    <th scope="col">Imię:</th>
                    <th scope="col">Nazwisko</th>
                    <th scope="col">Nazwa użytkownika</th>
                    <th scope="col">Edytuj</th>
                    <th scope="col">Usuń</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="admins" items="${admins}">
                    <tr>
                        <th scope="row">${admins.id}</th>
                        <td>${admins.firstname}</td>
                        <td>${admins.lastname}</td>
                        <td>${admins.username}</td>
                        <td><a href="/admin/update/${admins.id}">Edytuj</a> </td>
                        <td><a href="#" onclick="confirmDelete('${admins.id}', '${admins.username}')">Usuń</a> </td>
                    </tr>
                </c:forEach>
                </tbody>

            </table>
        </div>
    </div>
</body>
</html>
