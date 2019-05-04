package Servlet;

import Dao.LoginDao;
import Entity.User_c;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Servlet_select_user_c_id")
public class Servlet_select_user_c_id extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginDao loginDao=new LoginDao();
        String username=request.getParameter("username");
        User_c user_c=new User_c();
        user_c=loginDao.select_user(username);
        HttpSession session = request.getSession();
        session.setAttribute("user_c",user_c);
        request.getRequestDispatcher("employee_change_back.jsp").forward(request,response);
    }
}
