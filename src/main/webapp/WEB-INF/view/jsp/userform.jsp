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
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" ></script>
    <title>Title</title>
</head>
<body>
<form:form  action='/user/showuser' modelAttribute="userForm" commandName="userForm" method="POST">
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">Käyttäjän tiedot</h3>
    </div>
    <div class="panel-body">
        <table>

        <tr><th>Etunimi: </th><td><form:input path="firstName" type="text" value="${firstName}"/></td>
            <td><form:errors path="firstName" /></td></tr>
        <tr><th>Sukunimi: </th><td><form:input path="lastName" type="text" value="${lastName}" /></td>
            <td><form:errors path="lastName" /></td></tr>
        <tr><th>Sähköposti: </th><td><form:input path="email" type="text"  value="${email}"/></td>
            <td><form:errors path="email" /></td></tr>
        <tr><th>Ikä: </th><td><form:input path="age" type="text"  value="${age}"/></td>
            <td><form:errors path="age" />TTT</td></tr>
        <tr><th>Kunta: </th><td><form:input path="municipal" type="text"   value="${municipal}" /></td>
            <td><form:errors path="municipal" /></td></tr>
        <tr><th>Aktivointipäivä: </th><td><form:input path="activationDate" type="text"  value="${activationDate}" /></td>
            <td><form:errors path="activationDate" /></td></tr>
            </table>
    </div>
    <button  type="submit"  class="btn btn-small btn-primary">Tallenna</button>
</div>
    ${testi}
</form:form>
</body>
</html>
