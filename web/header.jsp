<%-- 
    Document   : header.jsp
    Created on : Oct 30, 2023, 8:18:55 PM
    Author     : n0387
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<header>
     <div class="header">
            <div class="container p-2">
                <div class="row d-flex">
                    <div class="col d-flex align-items-end justify-content-end">
                        <a href="homepage.jsp" class="style_header">HOME</a>
                    </div>
                    <div class="col d-flex align-items-end justify-content-center">
                        <a href="shopping.jsp" class="style_header">MEN SHOES</a>
                    </div>
                    <div class="logo col d-flex justify-content-center">
                        <img src="img/logoHenryStore.png" alt="" />
                    </div>
                    <div class="col d-flex align-items-end justify-content-center">
                        <a href="shopping.jsp" class="style_header">WOMEN SHOES</a>
                    </div>
                    <div class="col d-flex">
                        <div class="col d-flex align-items-end justify-content-start">
                            <a href="#footer" class="style_header">ABOUT ME</a>
                        </div>
                        <div class="row d-flex align-items-center">
                            <a class="col icon_resize" href="login.jsp">
                                <img src="img/login-icon.png" alt="login" />
                            </a>
                            <a class="col icon_resize" href="viewCart.jsp">
                                <img src="img/cart-icon.png" alt="login" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</header>
