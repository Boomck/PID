package Servlet;

import Dao.EvaluateDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/Servlet_delete_evaluate")
public class Servlet_delete_evaluate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        EvaluateDao evaluateDao=new EvaluateDao();
        evaluateDao.destoryevaluate(id);
        HttpSession session = request.getSession();
        session.removeAttribute("evaluatelist");
        request.getRequestDispatcher("/Servlet_select_evaluate").forward(request,response);
    }
}
