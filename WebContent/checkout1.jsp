<%-- 
    Document   : checkout1
    Created on : Jan 18, 2017, 2:05:37 AM
    Author     : Admin Kute
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop J2EE || Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Buy_shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/simpleCart.min.js"> </script>
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
    </head>
    <body>
         <%
            Users users = (Users) session.getAttribute("user");
            if (users == null) {
                response.sendRedirect("/Shop/Login.jsp");
            }
        %>
        
        <jsp:include page="header.jsp"></jsp:include>
        
         <div class="container">
                <div class="account">
                    <h2 class="account-in">checkout</h2>
                    <form action="CheckOutServlet" method="POST">
                        <div>
                            <span>Address *</span>
                            <input type="text" name="address">
                        </div> 	
                        <div>
                            <span>Phone Number *</span>
                            <input type="text" name="phone">
                        </div> 	
                        <div>
                            <span>Payment *</span>
                            <select name="payment">
                                <option value="Bank transfer"> Bank transfer</option>
                                <option value="Live"> Live</option>
                            </select>
                        </div> 			
                        <input type="submit" value="Checkout"> 
                    </form>
                </div>
        </div>
                                
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
