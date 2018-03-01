<%-- 
    Document   : hoadon
    Created on : Mar 1, 2018, 1:12:12 AM
    Author     : dell-lt
--%>

<%@page import="model.HoaDonDAO"%>
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
    <% HoaDonDAO hdDAO = new HoaDonDAO();%>
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
                    <h1> Danh sách hóa đơn</h1>
                        <form action="HoadonServlet" method="post">
                            <div class="form-group">
                                <label for="email">Mã khách hàng:</label>
                                <input type="text" class="form-control" placeholder=" Mời nhập mã khách hàng" name="MaHD" value="${HOADON.get(0)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Tên khách hàng:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập tên khách hàng" name="MaKH" value="${HOADON.get(1)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Địa chỉ:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập địa chỉ khách hàng" name="NgayLap" value="${HOADON.get(2)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Emai:</label>
                            <input type="number" class="form-control" placeholder="Mời nhập Email khách hàng" name="TongTien" value="${HOADON.get(3)}"/>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Số điện thoại:</label>
                            <input type="text" class="form-control" placeholder="Mời nhập số điện thoại khách hàng" name="Ghichu" value="${HOADON.get(4)}"/>
                        </div>
                        <button type="submit" class="btn btn-default" name="action" value="add">Add</button>
                        <button type="submit" class="btn btn-default" name="action" value="update">Update</button>
                    </form>
                    <h2>Danh sách Khách Hàng</h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Mã khách hàng</th>
                                <th>Tên khách hàng</th>
                                <th>Địa chỉ</th>
                                <th>Email</th>
                                <th>Số điện thoại</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (int i = 0; i < hdDAO.getAllHoaDon().size(); i++) {
                            %>
                            <tr>
                                <td><%=hdDAO.getAllHoaDon().get(i).getMaHD()%></td>
                                <td><%=hdDAO.getAllHoaDon().get(i).getMaKH()%></td>
                                <td><%=hdDAO.getAllHoaDon().get(i).getNgayLap()%></td>
                                <td><%=hdDAO.getAllHoaDon().get(i).getTongTien()%></td>
                                <td><%=hdDAO.getAllHoaDon().get(i).getGhiChu()%></td>
                                <td>
                                    <a href='<%="HoadonServlet?action=edit&MaHD=" + hdDAO.getAllHoaDon().get(i).getMaHD()%>'><i class="fa fa-pencil" aria-hidden="true"></i>Edit</a>|
                                    <a href='<%="HoadonServlet?action=del&MaHD=" + hdDAO.getAllHoaDon().get(i).getMaHD()%>'><i class="fa fa-trash" aria-hidden="true"></i>Del</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
