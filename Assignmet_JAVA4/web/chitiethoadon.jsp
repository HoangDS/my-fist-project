<%-- 
    Document   : chitiethoadon
    Created on : Mar 1, 2018, 12:56:32 PM
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
        <title>JSP Page</title>
    </head>
    
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <br><br>
            <div id="container">

                <br><br>
                <div id="content">

                    <div id="content-left" style="width: 25%">
                        <h2>Welcome to ${USERNAME}</h2><br>
                    <h3><a style="color: #050505; margin-left: 10px" href="addsp.jsp">Quản lý sản phẩm</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="nhanvien.jsp">Quản lý khách hàng</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="hoadon.jsp">Quản Lý Hóa Đơn</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="chitiethoadon.jsp">Chi Tiết Hóa Đơn</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="loaisanpham.jsp">Quản Lý Loại Sản Phẩm</a></h3>
                    <h3><a style="color: #050505; margin-left: 10px" href="LogoutServlet">Logout</a></h3>
                </div>
                <div id="content-right" style="width: 75%">
                    <h1> Danh sách chi tiết hóa đơn</h1>
                        <form action="HoadonServlet" method="post">
                            <div class="form-group">
                                <label for="email">Mã Sản Phẩm</label>
                                <input type="text" class="form-control" placeholder=" Mời nhập mã sản phẩm" name="MaHD" value="${HOADON.get(0)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Mã Hóa Đơn:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập mã hóa đơn" name="MaKH" value="${HOADON.get(1)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Đơn giá:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập đơn giá" name="NgayLap" value="${HOADON.get(2)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Số lượng:</label>
                            <input type="number" class="form-control" placeholder="Mời nhập số lượng" name="TongTien" value="${HOADON.get(3)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Thành tiền:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập số tiền" name="Ghichu" value="${HOADON.get(4)}"/>
                        </div>
                        
                        <button type="submit" class="btn btn-default" name="action" value="add">Add</button>
                        <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
                    </form>
                    <h2>Danh sách Chi tiết Hóa đơn</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Mã Sản Phẩm</th>
                                <th>Mã hóa đơn</th>
                                <th>Đơn giá</th>
                                <th>Số lượng</th>
                                <th>Thành tiền</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
