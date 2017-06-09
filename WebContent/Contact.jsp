<%-- 
    Document   : Contact
    Created on : Jan 4, 2017, 9:59:23 AM
    Author     : Admin Kute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop J2EE | Contact</title>
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
                <jsp:include page="header.jsp"></jsp:include>
               <div class="single_top">
	 <div class="container"> 
	  <div class="map">
	     <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.2285080099687!2d106.80154771432757!3d10.87021696042899!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317527587ba04377%3A0x4ea5c6ca79f1ff59!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBDw7RuZyBuZ2jhu4cgVGjDtG5nIHRpbiAtIMSQSFFHLUhDTQ!5e0!3m2!1svi!2s!4v1496479611855" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
	   </div>
	   <div class="col-md-9 contact_left">
		 	  <h1>Contact</h1>
	  			  <p>Gửi cho chúng tôi thắc mắc của bạn</p>
	  			 <form>
					<div class="column_2">
                     	<input type="text" class="text"  placeholder="" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
					 	<input type="text" class="text"  placeholder="" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" style="margin-left:2.7%">
					 	<input type="text" class="text"  placeholder="" value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}" style="margin-left:2.7%">
					</div>
					<div class="column_3">
	                   <textarea value="Message"  placeholder="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
	                </div>
	                <div class="form-submit1">
			          <input type="submit" value="Send Message">
					</div>
					<div class="clearfix"> </div>
				  </form>
		 </div>
		 <div class="col-md-3 contact_right">
		 	<h2>Information</h2>
		 	<address class="address">
              <p>Thu Duc, <br>Tp.HCM.</p>
              <dl>
                 <dt></dt>
                 <dd>Freephone:<span> +84975308144</span></dd>
                 <dd>Telephone:<span> +84975308144</span></dd>
                 <dd>FAX: <span>+84975308144</span></dd>
                 <dd>E-mail:&nbsp; <a href="mailto:vanthinh291@gmail.com">admin@shop.vn</a></dd>
              </dl>
           </address>
		 </div>
      </div>
</div>      
                <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
