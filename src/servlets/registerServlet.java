package servlets;

import User.Borrower;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String upsd = request.getParameter("sec_psd");

        try {
            Borrower user = new Borrower(uname,upsd);
            if(user.Register()){
                response.sendRedirect(request.getContextPath()+"/student.jsp");
            }else {
                Cookie cookie = new Cookie("error","1");
                response.addCookie(cookie);
                response.sendRedirect(request.getContextPath()+"/login/login.jsp");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
