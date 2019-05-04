package Servlet;

import Dao.NewsDao;
import Entity.News;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet_delete_news")
public class Servlet_delete_news extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title_n=request.getParameter("title_n");
        NewsDao newsDao=new NewsDao();
        newsDao.delete_news(title_n);
        request.getRequestDispatcher("/Servlet_select_news").forward(request,response);
    }
}
