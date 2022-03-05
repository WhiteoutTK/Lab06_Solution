
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
        <p>Hello, ${username} <a href="<c:url value="/ShoppingList">
                                      <c:param name="action" value="logout"/> 
                                 </c:url>">logout</a></p>
        <h2>List</h2>
        
        <form action="ShoppingList" method="post">
            <label>Add Item:</label>
            <input type="text" name="itemname" value="">
            <input type="submit" value="Add">
             <input type="hidden" name="action" value="add">
        </form>
        
        <c:if test="${itemlist.size() > 0}">
        <form action="ShoppingList" method="post">
        <ul>
        <c:forEach items="${itemlist}" var="item">
            <li>  <input type="radio" name="itemname" value=${item}>${item}</li>
        </c:forEach>
        </ul>
            <input type="submit" value="Delete">
             <input type="hidden" name="action" value="delete">
        </form>
        </c:if>
    </body>
</html>
