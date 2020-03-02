<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: FrederikDahl
  Date: 02/03/2020
  Time: 12.04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Indkøbskurv</title>
</head>
<body>
${sessionScope.besked}


<h1>Din indkøbskurv</h1>
<h2> Du er klar til at tilføje emner til din indkøbskurv </h2>


<form action="AddItemServlet" method="post">
    <label for="fname">Skriv vare:</label><br>
    <input type="text" id="fname" name="vareNavn" ><br>
    <input type="submit" value="Tilføj">
</form>

<br>
<br>

<h2>${requestScope.besked}</h2>
<br>
<c:forEach var="element" items="${sessionScope.indkøb}">
    ${element}
    <br>

</c:forEach>

<form action="LogOutServlet" method="post">
    <input type="submit" value="Logout">
</form>

</body>
</html>
