package Servlet;

import Dao.RegisterDao;
import Entity.User_c;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servletregister")
public class Servletregister extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String validation = request.getParameter("validation");
        String valianswer = request.getParameter("valianswer");
        String name = request.getParameter("name");
        int row = 0;
        User_c user = new User_c();
        user.setUsername(username);
        user.setPassword(password);
        user.setValidation(validation);
        user.setValianswer(valianswer);
        user.setName(name);
        user.setAvatar("/pidimg/timg.jpg");
        RegisterDao registerDao = new RegisterDao();
        row = registerDao.insertuser(user);
        if (row != 0)
        {
            request.setAttribute("registermessage","注册成功");
            request.getRequestDispatcher("home.jsp").forward(request,response);
        }
        else
        {
            request.setAttribute("registermessage","注册失败");
            request.getRequestDispatcher("home.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
