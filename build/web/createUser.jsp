<%-- 
    Document   : createUser
    Created on : 24-02-2023, 10:55:52
    Author     : saeququangsss
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <c:import url="header.jsp"></c:import>
        <%
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
        %>
        <div style="background-color: #FFF2D8; height: 100vh">
            <section class="container" 
                     <div class="container py-5 h-100" >
                    <div class="row justify-content-center align-items-center h-100">
                        <div class="col-12 col-lg-9 col-xl-7">
                            <div class="card shadow-2-strong card-registration" style="border-radius: 15px;">
                                <div class="card-body p-4 p-md-5">
                                    <h3 class="mb-4 pb-2 pb-md-0 mb-md-5">Registration Form</h3>
                                    <form action="MainController" method="POST">
                                        <div class="row">
                                            <div class="col-md-6 mb-4">

                                                <div class="form-outline">
                                                    <input type="text" class="form-control form-control-lg" name="userID" />
                                                    <label class="form-label" for="userID">User ID</label>
                                                    ${requestScope.USER_ERROR.userIDError}</br>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mb-4">

                                                <div class="form-outline">
                                                    <input type="text"  class="form-control form-control-lg" name="fullName"/>
                                                    <label class="form-label" for="fullName">Full Name</label>
                                                    ${requestScope.USER_ERROR.fullNameError}</br>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-outline">
                                            <input type="tel"  class="form-control form-control-lg" name="phoneNumber"/>
                                            <label class="form-label" for="phoneNumber">Phone Number</label>
                                        </div>
                                        <div class="form-outline">
                                            <input type="text"  class="form-control form-control-lg" name="address"/>
                                            <label class="form-label" for="address">Address</label>
                                        </div>
                                        <div class="form-outline">
                                            <input type="text"  class="form-control form-control-lg" name="roleID"/>
                                            <label class="form-label" for="address">Role ID</label>
                                        </div>
                                        <div class="form-outline">
                                            <input type="password" class="form-control form-control-lg" name="password"/>
                                            <label class="form-label" for="password">Password</label>
                                        </div>
                                        <div class="form-outline">
                                            <input type="password"  class="form-control form-control-lg" name="confirm"/>
                                            <label class="form-label" for="password">Confirm Password</label>
                                            ${requestScope.USER_ERROR.confirmError}</br>
                                        </div>
                                        <div class="mt-4 pt-2">
                                            <input class="btn btn-primary btn-lg" type="submit" value="Create" name="action"/>
                                        </div>
                                        <div class="mt-4 pt-2">
                                            <a class="btn btn-primary btn-lg" href="login.jsp">Return</a>    
                                        </div>
                                        ${requestScope.ERROR}
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>

    </body>
</html>
</html>
