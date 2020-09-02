<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Application - Spring MVC - Model Answer</title>
    </head>

    <body>
        <h1>Contact Application - Spring MVC - Model Answer</h1>
        <h2>Home</h2>
        <hr>   
        <ul>
            <li><a href="<spring:url value='/addContact.htm'/>">Add a new Contact</a></li>	
            <li><a href="<spring:url value='/listContacts.htm'/>">List all Contacts</a></li>	
        </ul>
        <hr>   	
    </body>
</html>
