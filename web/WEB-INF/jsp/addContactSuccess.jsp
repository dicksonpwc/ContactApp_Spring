<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Application - Spring MVC - Model Answer</title>
    </head>
    <body>
        <h1>Contact Application - Spring MVC - Model Answer</h1>
        <h2>Add Contact Success</h2>
        The contact is added successfully
        <br/>
        <p/>
        <form action="<c:url value='/' />" method="get">
              <input type="submit" value="Home" />
        </form>
    </body>
</html>
