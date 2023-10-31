

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDAO"%>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" href="css/admin.css">
        <link rel="stylesheet" href="css/header.css">
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
            />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap"
            rel="stylesheet"
            />
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
            rel="stylesheet"
            />
        <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
            />
        <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
            rel="stylesheet"
            />
    </head>
    <body>
        <c:if test="${sessionScope.LOGIN_USER==null||sessionScope.LOGIN_USER.roleID ne 'AD'}">
            <c:redirect url ="login.jsp"></c:redirect>
        </c:if>

        <c:import url="header.jsp"></c:import>
            <div style="background-color: #FFF2D8; height: 100vh">
                <h1>Welcome: ${sessionScope.LOGIN_USER.fullName}</h1> 
            <c:url var="loginLink" value="MainContoller">
                <c:param name="action" value="Logout"></c:param>
            </c:url>
            <a href="${login.jsp}">Logout</a>
            <form action="MainController" method="POST" >
                Search<input type="text" name="search" value="${param.search}"/>
                <input type="submit" name="action" value="Search"/>
            </form>
            <c:if test="${requestScope.LIST_USER != null}">
                <c:if test="${not empty requestScope.LIST_USER}"></c:if>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>NO</th>
                                <th>User ID</th>
                                <th>Full Name</th>
                                <th>Phone Number</th>
                                <th>Address</th>
                                <th>Role ID</th>
                                <th>Password</th>
                                <th>Update</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                        <form action="MainController" method="POST">
                        <c:forEach var="user" varStatus="conuter" items="${requestScope.LIST_USER}">
                            <tr>
                                <td>${conuter.count}</td>
                                <td>
                                    <input type="text" name="userID" value="${user.userID}" readonly=""/>
                                </td>
                                <td>
                                    <input type="text" name="fullName" value="${user.fullName}" required=""/>
                                </td>
                                <td>
                                    <input type="text" name="phoneNumber" value="${user.phoneNumber}" required=""/>
                                </td>
                                <td>
                                    <input type="text" name="address" value="${user.address}" required=""/>
                                </td>
                                <td>
                                    <input type="text" name="roleID" value="${user.roleID}" required=""/>
                                </td>
                                <td>
                                    ${user.password}
                                </td>
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="search" value="${param.search}"/>

                                </td>
                                <td>
                                    <c:url var="deleteLink" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                    </c:url>
                                    <a href="${deleteLink}">Delete</a>
                                </td>
                            </tr>
                        </form>
                    </c:forEach>

                    </tbody>
                </table>
                ${requestScope.ERROR}
            </c:if>
        </div>


    </body>
</html>
