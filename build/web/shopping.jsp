<%-- 
    Document   : shopping
    Created on : Feb 28, 2023, 11:22:22 AM
    Author     : saeququangsss
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping page</title>
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
        <link  rel="stylesheet" href="css/header.css">
    </head>
    <body>
        <c:import url="header.jsp"></c:import>

        <%--<c:set var="email" value="${sessionScope.GOOGLE_USER}" />--%>
        <!--${email}-->
        <c:set var="message" value="${empty requestScope.MESSAGE ? '' : requestScope.MESSAGE}" />
                ${message}
        <div class="container mb-5">
            <p class="text-center fs-3 fw-bold mt-3">NEW PRODUCT</p>
            <div class="row d-flex">
                <!-- item -->
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST" >
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_40eaa204cf374bc6a60bbe50e9d29bb2_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="1-THE GENT WOLF CHELSEA BOOT BROW-19.9">THE GENT WOLF CHELSEA BOOT - BROWN</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 19.9$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>

                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_d9f30d08e5dc48e8992414d1343526b8_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="2-THE GENT WOLF CHELSEA BOOT BLACK-17.9">THE GENT WOLF CHELSEA BOOT - BLACK</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 17.9$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>

                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_37683ec15b594dd79467d3a367f77090_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="3-THE MARS WOLF CHELSEA BOOT TAN SUEDE-50">THE MARS WOLF CHELSEA BOOT - TAN SUEDE</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 50$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>

                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_5854fa0ea7fa4b709f6a1f154c1ece8b_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="4-THE MARS WOLF CHELSEA BOOT - BLACK SUEDE-18.5">THE GENT WOLF CHELSEA BOOT - BROWN</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 18.5$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_b4e517f8116943afbb687158c880a419_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="5-THE MARS WOLF CHELSEA BOOT SPECIAL EDITION BLACK-14.2">THE MARS WOLF CHELSEA BOOT SPECIAL EDITION - BLACK</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 14.2$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="//product.hstatic.net/200000033444/product/1_d4efeaf52bf64b02bf224a10d56340b1_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="6-THE LADY WOLF CHUNKY COMBAT BOOT BLACK-15.9">THE LADY WOLF CHUNKY COMBAT BOOT - BLACK</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 15.9$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_da1e999790294cf3b6de513851150fc8_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="7-THE LADY WOLF MARBE CHUNKY COMBAT BOOT BEIGE-20">THE LADY WOLF MARBE CHUNKY COMBAT BOOT - BEIGE</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 20$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_764010d9901243a19b95a7a990abd499_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="8-THE MARS LADY WOLF HIGH COMBAT BOOT BLACK-22">THE MARS LADY WOLF HIGH COMBAT BOOT - BLACK</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 22$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                            <div class="block_item">
                                <img src="https://product.hstatic.net/200000033444/product/1_35a828c87bcd46edbf4f06fdb6e7b4e1_grande.jpg" alt="" />
                            </div>
                            <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                                <option value="9-THE MARS LADY WOLF MID COMBAT BOOT BLACK-17.2">THE GENT WOLF CHELSEA BOOT - BROWN</option>           
                            </select>
                            <div class="price text-center fs-5">Price: 17.2$</div>
                            <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="10">10</option>
                            </select>
                            <div class="btn_add m-auto">
                                <input type="submit" name="action" value="ADD"/>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-3 d-flex flex-column">
                    <form action="MainController" method="POST">
                        <div class="d-flex flex-column">
                        <div class="block_item">
                            <img src="https://product.hstatic.net/200000033444/product/1_4022617951674097baa2e631a6ec82c4_grande.jpg" alt="" />
                        </div>
                        <select name ="cmbProduct" class="name_item fs-4 fw-bold text-center">   
                            <option value="10-THE GENT WOLF DERBY BROWN-19.4">THE GENT WOLF DERBY - BROWN</option>           
                        </select>
                        <div class="price text-center fs-5">Price: 19.4$</div>
                        <select name ="cmbQuantity" class="name_item fs-4 fw-bold text-center">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="10">10</option>
                        </select>
                        <div class="btn_add m-auto">
                            <input type="submit" name="action" value="ADD"/>
                        </div>
                        </div>
                    </form>
                </div>

                
                </body>
                </html>
