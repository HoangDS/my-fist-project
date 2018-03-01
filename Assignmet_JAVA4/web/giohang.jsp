<%-- 
    Document   : giohang
    Created on : Oct 25, 2017, 12:43:58 AM
    Author     : dell-lt
--%>

<%@page import="model.GioHangDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Giỏ hàng - HoangTmS Mobile</title>
    </head>
    <%
        if (session != null) {
            if (session.getAttribute("USERNAME") == null) {
                response.sendRedirect("login.jsp");
            }
        }
    %>
    <% GioHangDAO ghDAO = new GioHangDAO();%>
    <body>
        <jsp:include page="menu1.jsp"></jsp:include>
            <div class="container" style="min-height:  700px">
                <div class="col-sm-8">
                    <h2 style="color: firebrick"><strong>Giỏ hàng của khách hàng</strong></h2>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Username</th>
                                <th>Mã sản phẩm</th>
                                <th>Tên sản phẩm</th>
                                <th>Số lượng</th>
                                <th>Giá</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>hoangds</td>
                                <td>SP01</td>
                                <td>SamSung S8</td>
                                <td class="cart_quantity">
                                    <div class="cart_quantity_button">
                                        <a class="cart_quantity_up" href=""> + </a>
                                        <input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
                                        <a class="cart_quantity_down" href=""> - </a>
                                    </div>
                                </td>
                                <td>22000000</td>
                                <td>
                        <center>
                            <a href=""><i class="fa fa-trash" aria-hidden="true"></i></a>
                        </center>
                        </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <div class="container">
                    <div class="col-sm-3">
                        <h2 style="color: firebrick"><strong>Thanh toán</strong></h2>
                        <form>
                            Tổng số lượng: <br>
                            Tổng tiền: <br><hr>
                            <button type="submit" class="btn btn-info btn-lg">Thanh toán</button>
                        </form>
                    </div>
                </div>

            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
