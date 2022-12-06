<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Evgeniy
  Date: 04.12.2022
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
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
        <th>Operations</th>
    </tr>

    <c:forEach var="emps" items="${allEmps}">

        <c:url var="updateButton" value="/update-info">
            <c:param name="empID" value="${emps.id}"/>
        </c:url>

        <c:url var="deleteButton" value="/delete-employe">
            <c:param name="empID" value="${emps.id}"/>
        </c:url>

        <tr>
            <td>${emps.name}</td>
            <td>${emps.surname}</td>
            <td>${emps.department}</td>
            <td>${emps.salary}</td>
            <td>
                <input type="button" value="Update"
                       onclick="window.location.href = '${updateButton}'"/>

                <input type="button" value="Delete"
                       onclick="window.location.href = '${deleteButton}'"/>
            </td>
        </tr>
    </c:forEach>

</table>

<input type="button" value="add"
    onclick="window.location.href = 'addNewEmployee'"/>

</body>
</html>
