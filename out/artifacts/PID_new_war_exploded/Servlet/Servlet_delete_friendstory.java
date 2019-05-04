package Servlet;

import Dao.FriendsStoryDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet_delete_friendstory")
public class Servlet_delete_friendstory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title_f=request.getParameter("title_f");
        FriendsStoryDao friendsStoryDao=new FriendsStoryDao();
        friendsStoryDao.delete_friendstory(title_f);
        request.getRequestDispatcher("/Servlet_select_friendstory").forward(request,response);
    }
}
