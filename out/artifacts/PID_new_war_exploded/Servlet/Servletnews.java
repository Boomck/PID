package Servlet;

import Dao.NewsDao;
import Entity.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Servletnews")
public class Servletnews extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = request.getParameter("url");
        List<News> newsList = new ArrayList<News>();
        NewsDao newsDao = new NewsDao();
        newsList =  newsDao.selectnews();
        HttpSession session = request.getSession();
        if (newsList!=null)
        {
            session.setAttribute("news",newsList);
            request.getRequestDispatcher(url).forward(request,response);
        }
    }
}
