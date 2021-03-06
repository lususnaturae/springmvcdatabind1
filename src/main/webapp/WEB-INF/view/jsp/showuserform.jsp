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
<%@ page isELIgnored="false" %>
<html>
<head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
    <title>Title</title>
</head>
<body>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">TIETOJEN NÄYTTÖ</h3>
    </div>
    <div class="panel-body">
        <table>
        <tr><th>Etunimi: </th><td>${userForm.firstName}</td></tr>
        <tr><th>Sukunimi: </th><td>${userForm.lastName}</td></tr>
        <tr><th>Sähköposti: </th><td>${userForm.email}</td></tr>
        <tr><th>Ikä: </th><td>${userForm.age}</td></tr>
        <tr><th>Kunta: </th><td>${userForm.municipals}</td></tr>
        <tr><th>Aktivointipäivä: </th><td>${userForm.activationDate}</td></tr>
            </table>
    </div>
</div>
</body>
</html>
