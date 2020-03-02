<%--
  Created by IntelliJ IDEA.
  User: FrederikDahl
  Date: 02/03/2020
  Time: 12.27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Opret bruger</title>
</head>
<body>

<h1>Her kan du registreres som bruger.</h1>
<br>
<h2>${requestScope.besked}</h2>
<br>
<br>

<form action=" OpretServlet" method="post">
    <label for="fname">Brugernavn:</label><br>
    <input type="text" id="fname" name="brugernavn" ><br>
    <label for="lname">Kodeord:</label><br>
    <input type="text" id="lname" name="kodeord" ><br><br>
    <input type="submit" value="Login">
</form>


</body>
</html>
