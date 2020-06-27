<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: marcin
  Date: 24.06.2020
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CRM</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>

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

    <button type="submit" class="btn btn-primary">Dodaj</button>
</form:form>


<form:form method="post" modelAttribute="assortments">
    <div class="form-group">
        <label for="order.id">Zamówienie</label>
        <form:select path="order.id" items="${ordersList}" itemLabel="id" itemValue="id"  class="form-control" id="order.id" />
        <form:errors path="order"/>
    </div>
    <div class="form-group">
        <label for="assortment.id">Asortyment:</label>
        <form:select path="assortment.id" items="${assortmentsList}" itemLabel="name" itemValue="id"  class="form-control" id="assortment.id" />
        <form:errors path="assortment"/>
    </div>
    <div class="form-group">
        <label for="quantity">Ilość:</label>
        <form:input type="text" path="quantity" class="form-control" id="quantity" aria-describedby="emailHelp"/>
        <form:errors path="quantity"/><br>
    </div>

    <button type="submit" class="btn btn-primary">Zapisz</button>
</form:form>


</body>
</html>
