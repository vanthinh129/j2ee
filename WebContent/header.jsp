<%-- 
    Document   : header
    Created on : Dec 15, 2016, 9:33:14 AM
    Author     : Admin Kute
--%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Users"%>
<%@page import="dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>header</title>
        <div id="fb-root"></div>
<!-- <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.8&appId=1292314900910024";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>-->
    </head>
    <body>
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
        %>
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
         <div class="header_top">
	<div class="container">
		<div class="one-fifth column row_1">
			<span class="selection-box"><select class="domains valid" name="domains">
		       <option>English</option>
		       <option>Vietnamese</option>
		    </select></span>
         </div>
         <div class="cssmenu">
			<ul>
			<% if (users.getUserEmail() == "") { %>
			    <li class="active"><a href="Login.jsp">Đăng Ký/Đăng Nhập</a></li> 
			    <% }else{ %>
                            <li><a href="#"> <%=users.getUserEmail() %></a> </li>
			    <li class="active"><a href="Logout.jsp"> - Thoát</a></li> 
                            <% } %>
			</ul>
		 </div>
	</div>
</div>	
<div class="wrap-box"></div>
<div class="header_bottom">
	    <div class="container">
			<div class="col-xs-8 header-bottom-left">
				<div class="col-xs-2 logo">
					<h1><a href="Index.jsp"><span></span>J2EE</a></h1>
				</div>
				<div class="col-xs-6 menu">
		            <ul class="megamenu skyblue">
				      <li class="active grid"><a class="color1" href="Product.jsp">Product</a><div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<%
                                                        for (Category c : categoryDAO.getListCategory()) {
                                                    %>
                                                    <li><a href="Product.jsp?categoryID=<%=c.getCategoryID()%>&pages=1"><%=c.getCategoryName()%></a></li>
                                                        <%
                                                            }
                                                        %>
									</ul>	
								</div>							
							</div>
							
							<div class="col1">
								<div class="h_nav">
									<h4>Popular Brands</h4>
									<ul>
										<li><a href="#">Levis</a></li>
										<li><a href="#">Persol</a></li>
										<li><a href="#">Nike</a></li>
										<li><a href="#">Edwin</a></li>
										<li><a href="#">New Balance</a></li>
										<li><a href="#">Jack & Jones</a></li>
										<li><a href="#">Paul Smith</a></li>
										<li><a href="#">Ray-Ban</a></li>
										<li><a href="#">Wood Wood</a></li>
									</ul>	
								</div>												
							</div>
						  </div>
						</div>
					</li>
				    
				<li><a class="color4" href="About.jsp">About</a></li>				
				<li><a class="color5" href="Blog.jsp">Blog</a></li>
				<li><a class="color6" href="Contact.jsp">Support</a></li>
			  </ul> 
			</div>
		</div>
	    <div class="col-xs-4 header-bottom-right">
	       <div class="box_1-cart"> 
		     <div class="box_11"><a href="checkout.jsp">
		      <h4><p>Cart: (<span></span> items)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
		      </a></div>
	          <p class="empty"><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
	          <div class="clearfix"> </div>
                  
	        </div>
	        <div class="search">	  
				<input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search';}">
				<input type="submit" value="Subscribe" id="submit" name="submit">
				<div id="response"> </div>
		     </div>
	         <div class="clearfix"></div>
       </div>
        <div class="clearfix"></div>
	 </div>
</div>
    </body>
</html>
