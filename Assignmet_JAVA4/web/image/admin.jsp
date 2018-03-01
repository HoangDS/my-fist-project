<%-- 
    Document   : admin
    Created on : Oct 9, 2017, 9:57:26 AM
    Author     : dell-lt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if(session !=null){
                if(session.getAttribute("USERNAME")==null){
                    response.sendRedirect("login.jsp");
                }
            }
            %>
        <jsp:include page="menu.jsp"></jsp:include>
            <br><br>
            <div id="container">
                
                <br><br>
                <div id="content">
                    
                    <div id="content-left">
                        <h1><h1>Welcome to ${USERNAME}</h1></h1>

                    </div>

                </div>
            </div>
            <br><br>
        <jsp:include page="footer.jsp"></jsp:include>  
    </body>
</html>
