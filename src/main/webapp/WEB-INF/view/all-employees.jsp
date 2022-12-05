<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Evgeniy
  Date: 04.12.2022
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Employees</title>
</head>
<body>
<h3>All Employees</h3>
<br>
<br>
<table>

    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>

    <c:forEach var="emps" items="${allEmps}">
        <tr>
            <td>${emps.name}</td>
            <td>${emps.surname}</td>
            <td>${emps.department}</td>
            <td>${emps.salary}</td>
        </tr>
    </c:forEach>

</table>




</body>
</html>
