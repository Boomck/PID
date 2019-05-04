package Servlet;

import Dao.FriendsStoryDao;
import Entity.FriendsStory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Servlet_select_friends_id")
public class Servlet_select_friends_id extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FriendsStory friendsStory=new FriendsStory();
        FriendsStoryDao friendsStoryDao=new FriendsStoryDao();
        String title_f=request.getParameter("title_f");
        friendsStory =  friendsStoryDao.selectfrinedstory_id(title_f);
        HttpSession session = request.getSession();
        session.setAttribute("friendsStory",friendsStory);
        request.getRequestDispatcher("FriendsStorychange_back.jsp").forward(request,response);
    }
}
