<%-- 
    Document   : menu
    Created on : Dec 17, 2016, 10:03:49 PM
    Author     : Admin Kute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
    <body>
        <div id="leftBar">
	<ul>
		<li><a href="index.jsp">Trang Chủ</a></li>
		<li><a href="manager_category.jsp">Danh Mục</a></li>
		<li><a href="manager_product.jsp">Sản Phẩm </a></li>
                <li><a href="manager_bill.jsp">Hóa Đơn </a></li>
                <li><a href="${root}/Shop/ChartServlet">Thống kê</a></li>
	</ul>
	</div>
    </body>
</html>
