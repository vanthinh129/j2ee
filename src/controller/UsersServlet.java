package controller;
import dao.UsersDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;
public class UsersServlet extends HttpServlet {
    UsersDAO usersDAO = new UsersDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String command = request.getParameter("command");
        String url = "";
        Users users = new Users();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":
                users.setUserID(new java.util.Date().getTime());
                users.setUserFullname(request.getParameter("fullname"));
                users.setUserEmail(request.getParameter("email"));
                users.setUserPass(request.getParameter("pass"));
                usersDAO.insertUser(users);
                url = "/Index.jsp";
                break;
            case "login":
                users = usersDAO.login(request.getParameter("email"), request.getParameter("pass"));
//                users.setUserID(new java.util.Date().getTime());
//                users.setUserFullname(request.getParameter("fullname"));
//                users.setUserEmail(request.getParameter("email"));
                //System.out.println(users.getUserEmail());
                if (users != null) {
                    session.setAttribute("user", users);
                    url = "/Index.jsp";
                }else{
                    session.setAttribute("error", "Email hoặc mật khẩu không chính xác.!");
                    url = "/Login.jsp";
                }
                break;
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
