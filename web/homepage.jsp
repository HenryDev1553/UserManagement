<%-- 
    Document   : homepage
    Created on : Oct 30, 2023, 8:53:41 PM
    Author     : n0387
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShoesStore</title>
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
            <div style="background-color: #FFF2D8">
                <div class="body_page">
                    <div class="slider">
                        <img src="img/slider-2.webp" alt="" />
                    </div>

<!--                    <div class="container mb-5">
                        <p class="text-center fs-3 fw-bold mt-3">NEW BRAND</p>
                        <div class="row d-flex">-->
                            <!-- item -->
                        <%--<c:forEach items="${ListP}" var="o">--%>
<!--                            <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_40eaa204cf374bc6a60bbe50e9d29bb2_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    ${o.productName}
                                </div>
                                <div class="price text-center fs-5">Price: ${o.price}</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>-->
<!--                            <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_4022617951674097baa2e631a6ec82c4_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE GENT WOLF DERBY - BROWN
                                </div>
                                <div class="price text-center fs-5">Price: 4.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                            <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_d9f30d08e5dc48e8992414d1343526b8_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE GENT WOLF CHELSEA BOOT - BLACK
                                </div>
                                <div class="price text-center fs-5">Price: 1.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                            <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_37683ec15b594dd79467d3a367f77090_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE MARS WOLF CHELSEA BOOT - TAN SUEDE
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                            <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_5854fa0ea7fa4b709f6a1f154c1ece8b_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE MARS WOLF CHELSEA BOOT - BLACK SUEDE
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                             <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_b4e517f8116943afbb687158c880a419_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE MARS WOLF CHELSEA BOOT SPECIAL EDITION - BLACK
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                             <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_d4efeaf52bf64b02bf224a10d56340b1_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE LADY WOLF CHUNKY COMBAT BOOT - BLACK
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                             <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_da1e999790294cf3b6de513851150fc8_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE LADY WOLF MARBE CHUNKY COMBAT BOOT - BEIGE
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                             <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_764010d9901243a19b95a7a990abd499_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE MARS WOLF CHELSEA BOOT - BLACK SUEDE
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>
                             <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_5854fa0ea7fa4b709f6a1f154c1ece8b_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE MARS WOLF CHELSEA BOOT - BLACK SUEDE
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <input type="submit" name="action" value="Add"/>
                                </div>
                            </div>
                             <div class="col-3 d-flex flex-column">
                                <div class="block_item">
                                    <img src="https://product.hstatic.net/200000033444/product/1_35a828c87bcd46edbf4f06fdb6e7b4e1_grande.jpg" alt="" />
                                </div>
                                <div class="name_item fs-4 fw-bold text-center">
                                    THE MARS LADY WOLF MID COMBAT BOOT - BLACK
                                </div>
                                <div class="price text-center fs-5">Price: 2.000.000VND</div>
                                <div class="btn_add m-auto">
                                    <button>ADD TO CART</button>
                                </div>
                            </div>-->
                        <%--</c:forEach>--%>


                        </div>
                    </div>

            </div>
    </body>
</html>
