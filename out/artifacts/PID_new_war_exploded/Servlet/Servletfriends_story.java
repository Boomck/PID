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

@WebServlet("/Servletfriends_story")
public class Servletfriends_story extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<FriendsStory> friendsStoryArrayList = new ArrayList<FriendsStory>();
        FriendsStoryDao friendsStoryDao = new FriendsStoryDao();
        friendsStoryArrayList = friendsStoryDao.selectfriendsstory();
        HttpSession session = request.getSession();
        if (friendsStoryArrayList!=null)
        {
            session.setAttribute("friendsstory",friendsStoryArrayList);
            request.getRequestDispatcher("friend_s_story.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
