<%-- 
    Document   : shoppingList
    Created on : Mar 4, 2022, 5:00:44 PM
    Author     : Jasleen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>Hello, ${username}</p>
        <br>
        <a href="<c:url value="/ShoppingList">
               <c:param name="action" value="logout"/>
            </c:url>">Logout</a>
        
        <h2>List</h2>
        <form method="post" action="ShoppingList">
        <label>Add Item:</label>
        <input type="text" name="itemname" value="">
        <input type="submit" name="add" value="Add">
        <input type="hidden" name="action" value="add">
        </form>
        
        <form method="post" action="ShoppingList">
        <ul>
        <c:forEach items="${itemList}" var="item">
        <li> <input type="radio" name="itemname" value="${item}">${item}</li>
        </c:forEach>
        </ul>
            <input type="submit" value="Delete">
            <input type="hidden" name="action" value="delete">
        </form>
    </body>
</html>
