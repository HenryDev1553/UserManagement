<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check Out</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <h1>Check Out</h1>
        <c:if test="${not empty CART}">
            <form action="MainController" method="POST">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Product ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="count" value="1" />
                        <c:set var="total" value="0" />
                        <c:forEach var="product" items="${CART.cart}">
                            <c:set var="subTotal" value="${product.value.price * product.value.quantity}" />
                            <c:set var="total" value="${total + subTotal}" />
                            <tr>
                                <td>${count}</td>
                                <td>
                                    <input type="text" name="id${count}" value="${product.value.productID}" readonly=""/>
                                </td>
                                <td>${product.value.productName}</td>
                                <td>${product.value.price}</td>
                                <td>${product.value.quantity}</td>
                                <td>${subTotal}</td>
                            </tr>
                            <c:set var="count" value="${count + 1}" />
                        </c:forEach>
                        <tr>
                            <td colspan="5">Total:</td>
                            <td>${total}</td>
                        </tr>
                    </tbody>
                </table>
                <h3>Enter your information:</h3>
                <table>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" required/></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><input type="email" name="email" required/></td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><input type="tel" name="phone" required/></td>
                    </tr>
                    <tr>
                        <td>Address:</td>
                        <td><input type="text" name="address" required/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" name="action" value="checkout"/></td>
                    </tr>
                </table>
            </form>
        </c:if>
        <br>
        <a href="shopping.jsp">Continue shopping</a>
    </body>
</html>