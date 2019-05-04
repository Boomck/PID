package Servlet;

import Dao.EvaluateDao;
import Dao.LoginDao;
import Entity.Evaluate;
import Entity.User_c;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/Servlet_select_evaluate")
public class Servlet_select_evaluate extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        EvaluateDao evaluateDao=new EvaluateDao();
        List<Evaluate> evaluateList=evaluateDao.getevaluate();
        session.setAttribute("evaluateList_back",evaluateList);
        request.getRequestDispatcher("evaluateList_back.jsp").forward(request,response);
    }
}
