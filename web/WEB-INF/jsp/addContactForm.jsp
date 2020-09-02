<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Application - Spring MVC - Model Answer</title>
        <style type="text/css">
            .red {color:red;}
        </style>
    </head>
    <body>
        <h1>Contact Application - Spring MVC - Model Answer</h1>
        <h2>Add Contact Form</h2>
        <form:form method="post" commandName="contact" servletRelativeAction="/addContactSubmit.htm">
            <table>
                <tr>
                    <td><form:label path="firstname">First Name</form:label></td>
                    <td><form:input path="firstname" /></td>
                    <td><form:errors path="firstname" cssClass="red" /></td>
                </tr>
                <tr>
                    <td><form:label path="lastname">Last Name</form:label></td>
                    <td><form:input path="lastname" /></td>
                    <td><form:errors path="lastname" cssClass="red" /></td>
                </tr>
                <tr>
                    <td><form:label path="phone">Phone</form:label></td>
                    <td><form:input path="phone" /></td>
                    <td><form:errors path="phone" cssClass="red" /></td>
                </tr>
                <tr>
                    <td><form:label path="age">Age</form:label></td>
                    <td><form:input path="age" /></td>
                    <td><form:errors path="age" cssClass="red" /></td>
                </tr>
                <tr><td><input type="submit" value="Save"/></td></tr>
            </table>
        </form:form>  
        <form action="<c:url value='/' />" method="get">
              <input type="submit" value="Cancel" />
        </form>
    </body>
</html>
