<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: FrederikDahl
  Date: 02/03/2020
  Time: 13.25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Administratorside</title>
</head>
<body>

${requestScope.besked}
<br>

<form action="AdminServlet" method="post">
    <label for="fname">Slet bruger:</label><br>
    <input type="text" id="fname" name="brugernavn" ><br>
    <input type="submit" value="Slet">
</form>

<br>
Her kan du se listen af brugere:
<br>
<br>

<c:forEach var="element" items="${applicationScope.brugerMap}">
    ${element}
    <br>

</c:forEach>

</body>
</html>
