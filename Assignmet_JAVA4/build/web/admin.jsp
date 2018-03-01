<%-- 
    Document   : admin
    Created on : Oct 9, 2017, 10:15:41 AM
    Author     : dell-lt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        
    </head>
    <%
        if (session != null) {
            if (session.getAttribute("USERNAME") == null) {
                response.sendRedirect("login.jsp");
            }
        }
    %>
    <body>
        
        <jsp:include page="menu.jsp"></jsp:include>
            <br><br>
            <div id="container" style="height: 700px; ">

                
                <div id="content">
                    <br> <br>
                    <div id="content-left" style="width: 25%">
                        <h2>Xin chào ${USERNAME}</h2><br>
                    <h3><a style="color: #050505; margin-left: 10px" href="addsp.jsp">Quản lý sản phẩm</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="khachhang.jsp">Quản lý khách hàng</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="hoadon.jsp">Quản Lý Hóa Đơn</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="chitiethoadon.jsp">Chi Tiết Hóa Đơn</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="loaisanpham.jsp">Quản Lý Loại Sản Phẩm</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="LogoutServlet">Logout</a></h3>
                </div>
                <div id="content-right" style="width: 75%">
                    <img style="height: 500px; width: 970px" src="image/bia1.jpg" />
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
