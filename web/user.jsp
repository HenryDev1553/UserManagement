<%-- 
    Document   : user
    Created on : Feb 14, 2023, 10:51:05 AM
    Author     : Hao Cute
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
        <link  rel="stylesheet" href="css/header.css">

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
        <link href="css/user.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <c:if test="${sessionScope.LOGIN_USER==null||sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url ="login.jsp"></c:redirect>
        </c:if>
        <c:import url="header.jsp"></c:import>   
        <div style="background-color: #FFF2D8; height: 100vh">
            <section id="user" >
                <div class="container">
                    <img src="images/backgrounds/checkout_bg.jpg" alt=""/>
                </div>
                <div class="user--info">
                    <div class="user--info__title">User Information</div>
                    <form action="MainController" method="POST">
                        <div class="info--left">
                            <label class="info--lable" for="userid">User ID </label>
                            <label class="info--lable" for="username">Username</label>
                            <label class="info--lable" for="password">Password</label>
                            <label class="info--lable" for="role">Role ID</label>
                            <label class="info--lable" for="phone">Phone</label>
                            <label class="info--lable" for="address">Address</label>
                        </div>
                        <div class="info--right">
                            <input class="info--input__text" type="text" id="userid" name="userID" value="${sessionScope.LOGIN_USER.userID}" readonly=""/>
                        <input class="info--input__text" type="text" id="username" name="username" value="${sessionScope.LOGIN_USER.fullName}"/>
                        <input class="info--input__text" type="text" id="password" value="*********" readonly=""/>
                        <input class="info--input__text" type="text" id="role" name="roleID" value="${sessionScope.LOGIN_USER.roleID}" readonly=""/>
                        <input class="info--input__text" type="text" id="phone" name="phone" value="${sessionScope.LOGIN_USER.phoneNumber}" />
                        <input class="info--input__text" type="text" id="address" name="address" value="${sessionScope.LOGIN_USER.address}" />
                    </div>
<!--                    <div class="form--button">
                        <input type="text" name="action" value="" hidden=""/>
                        <div class="form--submit__btn" onclick="submit('UpdateUser')">Update Infomation</div>
                    </div>-->
                </form>
            </div>
        </section>
        </div>
</body>
</html>
