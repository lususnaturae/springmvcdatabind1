<%--
  Created by IntelliJ IDEA.
  User: marco
  Date: 22.4.2016
  Time: 17.39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="panel panel-default">
    <div class="panel-heading" style="background-color: green;">
        <h3 class="panel-title" style="color: white;"><strong>Käyttäjän tiedot</strong></h3>
    </div>
    <div class="panel-body">
        <form:form cssClass="form-horizontal" action='/user/showuser' modelAttribute="userForm" commandName="userForm"
                   method="POST">
        <div class="form-group">
            <label for="firstName" class="control-label">
                Etunimi
            </label>
            <form:input cssClass="form-control" path="firstName" type="text" value="${firstName}"/>
            <small style="color: red;"><form:errors path="firstName"/></small>
        </div>
        <div class="form-group">
            <label for="lastName" class="control-label">
                Sukunimi
            </label>
            <form:input cssClass="form-control" path="lastName" type="text" value="${lastName}"/>
            <small style="color: red;"><form:errors path="lastName"/></small>
        </div>
        <div class="form-group">
            <label for="email" class="control-label">
                Sähköposti
            </label>
            <form:input cssClass="form-control" path="email" type="text" value="${email}"/>
            <small style="color: red;"><form:errors path="email"/></small>
        </div>
        <div class="form-group">
            <label for="age" class="control-label">
                Ikä
            </label>
            <form:input cssClass="form-control" path="age" type="text" value="${age}"/>
            <small style="color: red;"><form:errors path="age"/></small>

        </div>

        <div class="form-group">
            <label for="municipals" class="control-label">
                Kunta
            </label>
            <form:checkboxes element="li" path="municipals" items="${municipals}" />

            <small style="color: red;"><form:errors path="municipals"/></small>

        </div>
        <div class="form-group">
            <label for="activationDate" class="control-label">
                Aktivointipäivä
            </label>
            <form:input cssClass="form-control" path="activationDate" type="text" id="activationDate" value="${activationDate}"/>
            <small style="color: red;"><form:errors path="activationDate"/></small>
        </div>

    </div>
    <button type="submit" class="btn btn-small btn-primary">Tallenna</button>
</div>

</form:form>
</body>
</html>
