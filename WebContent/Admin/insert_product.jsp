<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm sản phẩm</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
        <script src="<c:url value="/ckeditor/ckeditor.js" />"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div id="wrapper">
            <jsp:include page="menu.jsp"></jsp:include>
                <div id="rightContent">
                    <h3>Thông tin sản phẩm</h3>
                    <form action="/Shop/ManagerProductServlet" method="post">
                    <table width="95%">
                        <tr><td><b>Tên sản phẩm</b></td><td><input type="text" name="product_name" class="sedang"></td></tr>
                        <tr><td><b>Giá bán</b></td><td><input type="text" name="product_price" class="sedang"></td></tr>
                        <tr><td><b>Loại sản phẩm</b></td><td>
                                <select name="category_id">
                                <%
            CategoryDAO categoryDAO = new CategoryDAO();
        %>
                                    <%
                                                        for (Category c : categoryDAO.getListCategory()) {
                                                    %>
                                                    <option value="<%=c.getCategoryID()%>"><%=c.getCategoryName()%></option>
                                                        <%
                                                            }
                                                        %>
                                </select>
                            </td></tr>
                        <tr><td colspan="2"><b>Mô tả sản phẩm</b></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <textarea class="form-textarea" id="noiDung" name="product_description"></textarea>
                                <script type="text/javascript" language="javascript">
                                   CKEDITOR.replace('noiDung', {width: '720px',height: '130px'});
                                </script>
                            </td>
                        </tr>
                        <tr><td><b>Đường dẫn Hình ảnh</b></td><td><input type="text" name="product_image" class="sedang"></td></tr>
                        <!--<tr><td><b>Hình ảnh</b></td><td><input type="file"></td></tr>-->
                        <tr><td></td><td>
                                <input type="submit" class="button" value="LƯU">
                                <input type="reset" class="button" value="BỎ QUA">
                            </td></tr>
                    </table>
                    </form>
                </div>
                <div class="clear"></div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
