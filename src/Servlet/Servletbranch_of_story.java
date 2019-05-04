package Servlet;

import Dao.BranchOfStoryDao;
import Entity.Evaluate;
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

@WebServlet("/Servletbranch_of_story")
public class Servletbranch_of_story extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        title = java.net.URLDecoder.decode(title,"UTF-8");
        List<Evaluate> evaluateList = new ArrayList<Evaluate>();
        FriendsStory friendsStory = new FriendsStory();
        BranchOfStoryDao branchOfStoryDao = new BranchOfStoryDao();
        evaluateList = branchOfStoryDao.selectevalute(title);
        friendsStory = branchOfStoryDao.selectbranchofstory(title);
        HttpSession session = request.getSession();
        if (friendsStory!=null)
        {
            request.setAttribute("friendsStory",friendsStory);
            request.setAttribute("evaluate",evaluateList);
            request.getRequestDispatcher("branch_of_story.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
