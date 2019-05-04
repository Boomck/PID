package Servlet;

import Dao.EvaluateDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet( "/Servletevaluatedelete")
public class Servletevaluatedelete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = new Integer(request.getParameter("id"));
        EvaluateDao evaluateDao = new EvaluateDao();
        int row = 0;
        HttpSession session = request.getSession();
        row = evaluateDao.deleteevalueate(id);
        if (row!=0)
        {
            session.removeAttribute("evaluatelist");
            request.getRequestDispatcher("person.jsp").forward(request,response);
        }
        else
        {
            request.setAttribute("error","error");
            request.getRequestDispatcher("person.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
