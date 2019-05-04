package Servlet;

import Dao.LoginDao;
import Entity.User_c;
//import org.apache.catalina.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Servletlogin")
public class Servletlogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String flag=request.getParameter("flag");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String  url = request.getParameter("url");
        String title = request.getParameter("title");
        LoginDao loginDao = new LoginDao();
        User_c user_c = new User_c();
        if(url!=null&&url.equals("branch_of_story.jsp")){
            flag=String.valueOf("0");
        }
        user_c = loginDao.Login(username,password);
        HttpSession session = request.getSession();
        if (url == null)
        {
            url = "";
        }
        if (user_c==null||user_c.getJurisdiction()!=Integer.parseInt(flag))
        {
            request.setAttribute("loginerror","登陆失败");
            request.getRequestDispatcher("home.jsp").forward(request,response);
        }
        else
        {
            session.setAttribute("user",user_c);
            if(user_c.getJurisdiction()==1){
                request.getRequestDispatcher("index_back.jsp").forward(request,response);
            }
            if (url.equals("branch_of_story.jsp"))
            {
                request.setAttribute("title",title);
                request.getRequestDispatcher("branch_of_story.jsp").forward(request,response);
                return;
            }
            request.getRequestDispatcher("home.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
