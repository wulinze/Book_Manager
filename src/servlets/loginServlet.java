package servlets;

import User.User;
import database.UserData;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

import User.*;

@WebServlet(name = "loginServlet",urlPatterns = "/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        String uname = request.getParameter("uname");
        String upsd = request.getParameter("upsd");
        String right = request.getParameter("type");
        User now = null;

        if(right.equals("管理员")){
            try {
                now = new Admin(uname,upsd);
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }else {
            try {
                now = new Borrower(uname,upsd);
            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        try {
            assert now != null;
            if(now.login()){
                HttpSession session = request.getSession();
                session.setAttribute("user",uname);
                if(right.equals("管理员")){
                    response.sendRedirect(request.getContextPath()+"/manager.jsp");
                }else {
                    response.sendRedirect(request.getContextPath()+"/student.jsp");
                }
            }else {
                Cookie cookie  = new Cookie("error","0");
                response.addCookie(cookie);
                response.sendRedirect(request.getContextPath()+"/login/login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
