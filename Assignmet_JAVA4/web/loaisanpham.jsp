<%-- 
    Document   : LoaiSanPham
    Created on : Mar 1, 2018, 1:37:54 PM
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
        <title>Add sản phẩm</title>
    </head>
    
    <body>
        <%
            if (session != null) {
                if (session.getAttribute("USERNAME") == null) {
                    response.sendRedirect("login.jsp");
                }
            }
        %>
        <jsp:include page="menu.jsp"></jsp:include>
            <br><br>
            <div id="container">

                <br><br>
                <div id="content">

                    <div id="content-left" style="width: 25%">
                        <h2>Welcome to ${USERNAME}</h2><br>
                    <h3><a style="color: #050505; margin-left: 10px" href="addsp.jsp">Quản lý sản phẩm</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="khachhang.jsp">Quản lý khách hàng</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="hoadon.jsp">Quản Lý Hóa Đơn</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="chitiethoadon.jsp">Chi tiết hóa đơn</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="loaisanpham.jsp">Quản Lý Loại Sản Phẩm</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="LogoutServlet">Logout</a></h3>
                </div>
                <div id="content-right" style="width: 75%">
                    <h1><strong>Quan Lý Loại Sản Phẩm</strong></h1>
                    <form action="SanPhamServlet" method="post" >
                        <div class="form-group">
                            <label for="email">Mã sản loại phẩm:</label>
                            <input type="text" class="form-control" placeholder=" Mời nhập mã loại sản phẩm" name="maSP" value="${SANPHAM.get(0)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Tên loại sản phẩm:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập tên loại sản phẩm" name="ten" value="${SANPHAM.get(1)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Mô tả:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập mô tả" name="gia" value="${SANPHAM.get(3)}"/>
                        </div>
                        <button type="submit" class="btn btn-default" name="action" value="add">Add</button>
                        <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
                    </form><hr><hr>

                    <h2>Danh sách loại sản phẩm</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Mã loại sản phẩm</th>
                                <th>Tên loại sản phẩm</th>
                                <th>Mô Tả</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                       
                        </table>
                </div>
            </div>
        </div>
</body>
</html>

