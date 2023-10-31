<%-- 
    Document   : viewCart
    Created on : Mar 3, 2023, 9:43:55 AM
    Author     : saeququangsss
--%>

<%@page import="sample.shopping.ProductDTO"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ViewCart</title>
        <link rel="stylesheet" type="text/css" href="viewcart.css">
    </head>
    <body>
        <h1>View Cart</h1>
        <c:set var="email" value="${sessionScope.GOOGLE_USER}" />
        ${email}
        <c:if test="${not empty CART}">
            <table border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Product ID</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Edit</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="count" value="0" />
                    <c:set var="total" value="0" />
                    <c:forEach var="product" items="${CART.cart}">
                        <c:set var="subTotal" value="${product.value.price * product.value.quantity}" />
                        <c:set var="total" value="${total + subTotal}" />
                    <form action="MainController" method="POST">
                        <tr>
                            <td>${count+1}</td>
                            <td>
                                <input type="text" name="id" value="${product.value.productID}" readonly=""/>
                            </td>
                            <td>${product.value.productName}</td>
                            <td>${product.value.price}</td>
                            <td>
                                <input type="number" name="quantity" value="${product.value.quantity}" min="1"/>
                            </td>
                            <td>${subTotal}</td>
                            <td>
                                <input type="submit" name="action" value="Edit"/>
                            </td>
                            <td>
                                <input type="submit" name="action" value="Remove"/>
                            </td>
                        </tr>
                    </form>
                </c:forEach>
            </tbody>
        </table>
        Total: <h1><c:out value="${total}"> </c:out>$</h1>

    </c:if>
    <a href="checkout.jsp">Check Out</a>
    <a href="shopping.jsp">Add more</a></br>
    <a href="login.jsp">Return</a>
</body>
</html>

