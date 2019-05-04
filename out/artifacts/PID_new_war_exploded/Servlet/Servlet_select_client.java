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
import java.util.List;

@WebServlet("/Servlet_select_client")
public class Servlet_select_client extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        LoginDao loginDao=new LoginDao();
        List<User_c> employeelist=loginDao.getclientlist();
        session.setAttribute("employeelist",employeelist);
        request.getRequestDispatcher("clientlist_back.jsp").forward(request,response);
    }
}
