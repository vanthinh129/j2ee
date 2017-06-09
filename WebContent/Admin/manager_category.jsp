<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Danh Mục</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css'/>
    </head>
    <body>
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
            ArrayList<Category> listCategory = categoryDAO.getListCategory();
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="wrapper">
        <jsp:include page="menu.jsp"></jsp:include>
        <div id="rightContent">
	<h3>QUẢN LÝ DANH MỤC</h3>
         <a href="${root}/Admin/insert_category.jsp">Thêm Danh Mục</a>
		<table class="data">
			<tr class="data">
				<th class="data" width="30px">TT</th>
				<th class="data">Mã Danh Mục</th>
				<th class="data">Tên Danh Mục</th>
				<th class="data" width="75px">Tùy Chọn</th>
			</tr>
                         <%
                            int count = 0;
                            for(Category category : listCategory){
                                count++;
                        %>
			<tr class="data">
				<td class="data" width="30px"><%=count%></td>
				<td class="data"><%=category.getCategoryID()%></td>
				<td class="data"><%=category.getCategoryName()%></td>
				<td class="data" width="75px">
				<center>
                                    <a href="${root}/Admin/update_category.jsp?command=update&category_id=<%=category.getCategoryID()%>&category_name=<%=category.getCategoryName()%>">Sửa</a>&nbsp;&nbsp; | &nbsp;&nbsp;
                                    <a href="/Shop/ManagerCategoryServlet?command=delete&category_id=<%=category.getCategoryID()%>">Xóa</a>
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
