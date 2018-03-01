<%-- 
    Document   : home
    Created on : Oct 1, 2017, 4:01:56 PM
    Author     : dell-lt
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hoang TMS mobile</title>
        <meta charset="UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>

    </head>

    <body >

        <jsp:include page="menu.jsp"></jsp:include>

            <br><br>
            <div id="container">
                <br><br>
            <jsp:include page="/content-right.jsp"></jsp:include>
                <div id="content">

                <jsp:include page="slideshow.jsp"></jsp:include>

                    <br>
                    <h2 style=" color: red; margin-left: 20px">   Sản phẩm được quan tâm nhiều nhất</h2>
                    <hr style="color: black">
                    <div class="col-25">
                        <div class="prod">
                            <div class="name"><h3 style="color: #FB060A">SamSung J7 Pro</h3></div>
                            <img src="image/2.png" alt="Avatar" class="image">
                            <div class="overlay">
                                <div class="text">
                                    <a>
                                        * Thông tin sản phẩm<br>
                                        -Công nghệ cảm biến hình ảnh<br>
                                        -Mặt sau bằng kim loại <br>
                                        -Quản lý pin thông minh<br>
                                        <br>
                                        <br>
                                        <strong style="color: red">Giá: 6.990.000 VND</strong>

                                    </a>
                                    <a href='<%="GioHangServlet?" %>'>Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-25">
                    <div class="prod">
                        <div class="name"><h3 style="color: #FB060A">IPhone 7Plus 256GB</h3></div>
                        <img src="image/3.png" alt="Avatar" class="image">
                        <div class="overlay">
                            <div class="text">
                                <p>
                                    * Thông tin sản phẩm<br>
                                    - Công nghệ cảm biến hình ảnh<br>
                                    - Mặt sau bằng kim loại <br>
                                    - Quản lý pin thông minh<br>
                                    <br>
                                    <br>
                                    <strong style="color: red">Giá: 23.000.000 VND</strong>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-25">
                    <div class="prod">
                        <div class="name"><h3 style="color: #FB060A">Sony XZ Premium</h3></div>
                        <img src="image/4.png" alt="Avatar" class="image">
                        <div class="overlay">
                            <div class="text">
                                <p>
                                    * Thông tin sản phẩm<br>
                                    - Công nghệ cảm biến hình ảnh<br>
                                    - Mặt sau bằng kim loại <br>
                                    - Quản lý pin thông minh<br>
                                    <br>
                                    <br>
                                    <strong style="color: red">Giá: 15.000.000 VND</strong>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-25">
                    <div class="prod">
                        <div class="name"><h3 style="color: #FB060A">Samsung Galaxy S8</h3></div>
                        <img src="image/5.png" alt="Avatar" class="image">
                        <div class="overlay">
                            <div class="text">
                                <p>
                                    * Thông tin sản phẩm<br>
                                    - Công nghệ cảm biến hình ảnh<br>
                                    - Mặt sau bằng kim loại <br>
                                    - Quản lý pin thông minh<br>
                                    <br>
                                    <br>
                                    <strong style="color: red">Giá: 23.000.000 VND</strong>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-25">
                    <div class="prod">
                        <div class="name"><h3 style="color: #FB060A">Samsung Galaxy S8</h3></div>
                        <img src="image/5.png" alt="Avatar" class="image">
                        <div class="overlay">
                            <div class="text">
                                <p>
                                    * Thông tin sản phẩm<br>
                                    - Công nghệ cảm biến hình ảnh<br>
                                    - Mặt sau bằng kim loại <br>
                                    - Quản lý pin thông minh<br>
                                    <br>
                                    <br>
                                    <strong style="color: red">Giá: 23.000.000 VND</strong>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-25">
                    <div class="prod">
                        <div class="name"><h3 style="color: #FB060A">Samsung Galaxy S8</h3></div>
                        <img src="image/5.png" alt="Avatar" class="image">
                        <div class="overlay">
                            <div class="text">
                                <p>
                                    * Thông tin sản phẩm<br>
                                    - Công nghệ cảm biến hình ảnh<br>
                                    - Mặt sau bằng kim loại <br>
                                    - Quản lý pin thông minh<br>
                                    <br>
                                    <br>
                                    <strong style="color: red">Giá: 23.000.000 VND</strong>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
        <br><br>
        <jsp:include page="footer.jsp"></jsp:include>  
    </body>
</html>
