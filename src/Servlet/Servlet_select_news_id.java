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

@WebServlet("/Servlet_select_news_id")
public class Servlet_select_news_id extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        NewsDao newsDao=new NewsDao();
        String title_n=request.getParameter("title_n");
        News news=new News();
        news=newsDao.select_news_id(title_n);
        HttpSession session = request.getSession();
        session.setAttribute("news",news);
        request.getRequestDispatcher("Newschange_back.jsp").forward(request,response);
    }
}
