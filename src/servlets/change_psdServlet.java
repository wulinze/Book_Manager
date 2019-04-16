package servlets;

import User.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "change_psdServlet")
public class change_psdServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String old_psd = request.getParameter("old_password");
        String new_psd = request.getParameter("new_password");
        User user = null;
        byte error_type=0;

        try {
            user = new Borrower(uname,old_psd);
            if ((error_type=user.change_psd(old_psd,new_psd))==0){
                response.sendRedirect(request.getContextPath()+"/login/login.jsp");
            }else {
                Cookie cookie = new Cookie("error", error_type+"");
                response.addCookie(cookie);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
