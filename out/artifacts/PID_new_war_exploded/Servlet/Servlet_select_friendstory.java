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

@WebServlet("/Servlet_select_friendstory")
public class Servlet_select_friendstory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<FriendsStory> friendsStoryList = new ArrayList<FriendsStory>();
        FriendsStoryDao friendsStoryDao=new FriendsStoryDao();
        friendsStoryList =  friendsStoryDao.selectfriendsstory();
        HttpSession session = request.getSession();
        session.setAttribute("friendsStoryList",friendsStoryList);
        request.getRequestDispatcher("friendsStoryList_back.jsp").forward(request,response);
    }
}
