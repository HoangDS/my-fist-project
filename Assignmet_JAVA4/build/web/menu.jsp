<%-- 
    Document   : menu
    Created on : Oct 1, 2017, 7:25:28 PM
    Author     : dell-lt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body data-spy="scroll" data-target=".navbar" data-offset="50">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="home.jsp">HOANG TMS</a>
                </div>
                <div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav">
                            <li><a href="home.jsp">Trang chủ</a></li>
                            <li><a href="sanpham.jsp">Sản phẩm</a></li>
                            <li><a href="#section3">Khuyến mãi</a></li>
                            <li><a href="#section4">Thông tin</a></li>
                            <li><a href="#section5">Liên hệ</a></li>
                            <li style="left: 280px"><a  href="giohang.jsp">Giỏ hàng</a></li>
                            <li style="left: 280px" ><a> <input type="text" name="timkiem" /> </a></li>
                            <li style="left: 350px"><a  href="login.jsp">Login</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav> 
    </body>
</html>
