<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Users"%>
<%@page import="model.Cart"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>Shop J2EE | Checkout</title>
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
            Users users = new Users();
            if (session.getAttribute("user") != null) 
                users = (Users) session.getAttribute("user");
            else
                users.setUserEmail("");
        %>
        <%
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        
        <div class="container">
	<div class="check">	 
		<div class="col-md-9 cart-items">
			 <h1>My Shopping Bag (<%=cart.countItem()%>)</h1>
             <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>

				<script>$(document).ready(function(c) {
					$('.close1').on('click', function(c){
						$('.cart-header').fadeOut('slow', function(c){
							$('.cart-header').remove();
						});
						});	  
					});
			   </script>
			 <div class="cart-header">
                              
                             <div class="close1">
                                 <a href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>"></a>
                             </div>
				 <div class="cart-sec simpleCart_shelfItem">
                                       <div class="cart-item cyc">
                                           <img src="<%=list.getValue().getProduct().getProductImage()%>" class="img-responsive" alt=""/>
						</div>
					   <div class="cart-item-info">
						<h3><a href="#"><%=list.getValue().getProduct().getProductName()%></a><span><%=list.getValue().getProduct().getProductID()%></span></h3>
						<ul class="qty">
							<li><p>Size : 5</p></li>
							<li><p>Qty :  <%=list.getValue().getQuantity()%> </p></li>
						</ul>
						<div class="delivery">
							 <p>Giá : <%=list.getValue().getProduct().getProductPrice()%></p>
							 <span>Giao hàng trong  2-3 ngày</span>
							 <div class="clearfix"></div>
				        </div>	
					   </div>
					   <div class="clearfix"></div>
											
				  </div>
			 </div>
                                                         <%}%>
			 <script>$(document).ready(function(c) {
					$('.close2').on('click', function(c){
							$('.cart-header2').fadeOut('slow', function(c){
						$('.cart-header2').remove();
					});
					});	  
					});
			 </script>
			 		
		 </div>
		 <div class="col-md-3 cart-total">
			 <a class="continue" href="#">Continue to basket</a>
			 <div class="price-details">
				 <h3>Price Details</h3>
				 <span>Total</span>
				 <span class="total1"><%=cart.total()%></span>
				 <span>Discount</span>
				 <span class="total1">---</span>
				 <span>Delivery Charges</span>
				 <span class="total1">0.00</span>
				 <div class="clearfix"></div>				 
			 </div>	
			 <ul class="total_price">
			   <li class="last_price"> <h4><%=cart.total()%></h4></li>	
			   <li class="last_price"><span><%=cart.total()%></span></li>
			   <div class="clearfix"> </div>
			 </ul>
			
			 
			 <div class="clearfix"></div>
			 <a class="order" href="checkout1.jsp">Đặt Hàng</a>
			 
			</div>
	 </div>
</div>
                                
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>