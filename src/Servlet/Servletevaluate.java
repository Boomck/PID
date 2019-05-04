package Servlet;

import Dao.EvaluateDao;
import Entity.Evaluate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/Servletevaluate")
public class Servletevaluate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        List<Evaluate> evaluateList = new ArrayList<Evaluate>();
        EvaluateDao evaluateDao = new EvaluateDao();
        evaluateList = evaluateDao.selectevaluate(username);
        HttpSession session = request.getSession();
        session.setAttribute("evaluatelist",evaluateList);
        request.getRequestDispatcher("person.jsp").forward(request,response);
    }
}
