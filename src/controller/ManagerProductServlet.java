package controller;
import dao.ProductDAO;
import java.io.IOException;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;
@WebServlet("/ManagerProductServlet")
public class ManagerProductServlet extends HttpServlet {
	ProductDAO ProductDAO = new ProductDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_id = request.getParameter("product_id");
        String url = "";
        try {
            switch (command) {
                case "delete":
                	ProductDAO.delete(Long.parseLong(product_id));
                    url = "/Admin/manager_product.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        long category_id = Long.parseLong(request.getParameter("category_id"));
        String product_name = request.getParameter("product_name");
        String product_image = request.getParameter("product_image");
        double product_price = Double.parseDouble(request.getParameter("product_price"));
        String product_description = request.getParameter("product_description");
        String url = "", error = "";
        //System.out.println(product_name+" - "+category_id+" - "+product_price+" - "+product_description+" - "+product_image);
        ProductDAO.insert(new Product(new Date().getTime()%1000, category_id, product_name,product_image,product_price,product_description));
        
        if (product_name.equals("")) {
            error = "Nhập tên sản phẩm";
            request.setAttribute("error", error);
        }
        url = "/Admin/manager_product.jsp";
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                    	ProductDAO.insert(new Product(new Date().getTime()%1000, category_id, product_name,product_image,product_price,product_description));
                        url = "/Admin/manager_product.jsp";
                        break;
                    case "update":
                    	ProductDAO.update(new Product(Long.parseLong(request.getParameter("product_id")),category_id, product_name,product_image,product_price,product_description));
                        url = "/Admin/manager_product.jsp";
                        break;
                }
            } else {
                url = "/Admin/insert_product.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
