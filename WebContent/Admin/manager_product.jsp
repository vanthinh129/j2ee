<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Sản Phẩm</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css'/>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="wrapper">
        <jsp:include page="menu.jsp"></jsp:include>
        <div id="rightContent">
	<h3>QUẢN LÝ SẢN PHẨM</h3>
	<%
	ProductDAO productDAO = new ProductDAO();
            ArrayList<Product> listProduct = productDAO.getListProduct();
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Category> listCategory = categoryDAO.getListCategory();
            String[] list1 = new String[100];
            //String[] list1;
            int number;
            for(Category category : listCategory){
                //count++;
                //number = (int)(long)category.getCategoryID();
                //list1[number] = category.getCategoryName();
            }
        %>
        <%=list1[1] %>
	<a href="${root}/Admin/insert_product.jsp">Thêm Sản Phẩm</a>
	<table class="data">
			<tr class="data">
				<th class="data" width="30px"></th>
				<th class="data" width="30px">TT</th>
				<th class="data">Mã Sản Phẩm</th>
				<th class="data">Tên Sản Phẩm</th>
				<th class="data">Giá</th>
				<th class="data">Danh mục</th>
				<th class="data" width="75px">Tùy Chọn</th>
			</tr>
                         <%
                            int count = 0;
                            for(Product product : listProduct){
                                count++;
                        %>
			<tr class="data">
				<td class="data" width="30px"><img width="100" src="../<%=product.getProductImage()%>"/></td>
				<td class="data" width="30px"><%=count%></td>
				<td class="data"><%=product.getProductID()%></td>
				<td class="data"><%=product.getProductName()%></td>
				<td class="data"><%=product.getProductPrice()%></td>
				<td class="data"><%=product.getCategoryID()%></td>
				<td class="data" width="75px">
				<center>
                 <a href="/Shop/ManagerProductServlet?command=delete&product_id=<%=product.getProductID()%>">Xóa</a>
				</center>
				</td>
			</tr>	
                        <%}%>
		</table>
		
	</div>
        <div class="clear"></div>
        <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
