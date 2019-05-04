package Servlet;

import Dao.LoginDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/Servlet_change_client")
public class Servlet_change_client extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        LoginDao loginDao=new LoginDao();
        String username=request.getParameter("username");
        String name=request.getParameter("name");
        String password=request.getParameter("name");
        String validation=request.getParameter("validation");
        String valianswer=request.getParameter("valianswer");
        String mail=request.getParameter("mail");
        String phone=request.getParameter("phone");
        String qqnumber=request.getParameter("qqnumber");
        String wechatnumber=request.getParameter("wechatnumber");
        loginDao.update_user(username,name,password,validation,valianswer,mail,phone,qqnumber,wechatnumber);
        request.getRequestDispatcher("/Servlet_select_client").forward(request,response);
    }
}
