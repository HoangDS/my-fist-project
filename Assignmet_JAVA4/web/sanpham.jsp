<%-- 
    Document   : sanpham
    Created on : Oct 20, 2017, 10:35:02 AM
    Author     : dell-lt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style2.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <div id="container">
            <div id="content">
                <div class="bgimg">
                    <img style="height: 495px; width: 1300px" src="image/coming_soon.png">
                    <div class="topleft">
                        <p>Hoang TMS</p>
                    </div>
                    <div class="middle">
                        <h1>COMING SOON</h1>
                        <hr>
                        <p id="demo" style="font-size:30px"></p>
                    </div>
                    <div class="bottomleft">
                        <p>Hàng sắp về: Iphone X</p>
                    </div>
                </div>

                <script>
                // Set the date we're counting down to
                    var countDownDate = new Date("December 10, 2017 15:37:25").getTime();

                // Update the count down every 1 second
                    var countdownfunction = setInterval(function () {

                        // Get todays date and time
                        var now = new Date().getTime();

                        // Find the distance between now an the count down date
                        var distance = countDownDate - now;

                        // Time calculations for days, hours, minutes and seconds
                        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
                        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
                        var seconds = Math.floor((distance % (1000 * 60)) / 1000);

                        // Output the result in an element with id="demo"
                        document.getElementById("demo").innerHTML = days + "d " + hours + "h "
                                + minutes + "m " + seconds + "s ";

                        // If the count down is over, write some text 
                        if (distance < 0) {
                            clearInterval(countdownfunction);
                            document.getElementById("demo").innerHTML = "EXPIRED";
                        }
                    }, 1000);
                </script>
            </div>
        </div>
    </body>
</html>
