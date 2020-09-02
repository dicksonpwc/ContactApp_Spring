<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Application - Spring MVC - Model Answer</title>
    </head>
    <body>
        <h1>Contact Application - Spring MVC - Model Answer</h1>
        <h2>List Contacts</h2>
        <table border="1">
        <tr>
            <th>First Name</th><th>Last Name</th><th>Phone</th><th>Age</th>
        </tr>
        <c:forEach var="c" items="${contactservice.contacts}">
            <tr>
                <td>${c.firstname}</td><td>${c.lastname}</td><td>${c.phone}</td><td>${c.age}</td>
            </tr>
        </c:forEach>
        </table>
        <p/>
        Total Number of Records: ${fn:length(contactservice.contacts)}
        <br/>
        <p/>
        <form action="<c:url value='/' />" method="get">
              <input type="submit" value="Back" />
        </form>
    </body>
</html>
