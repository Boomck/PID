package Servlet;

import Dao.PolicyGuideDao;
import Entity.PolicyGuide;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/Servletselectpolicy_guide")
public class Servletselectpolicy_guide extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<PolicyGuide> policyGuideArrayList = new ArrayList<PolicyGuide>();
        PolicyGuideDao policyGuideDao = new PolicyGuideDao();
        policyGuideArrayList =  policyGuideDao.selectpolicyguide();
        HttpSession session = request.getSession();
        if (policyGuideArrayList!=null)
        {
            session.setAttribute("policyguide",policyGuideArrayList);
            request.getRequestDispatcher("policy_guide.jsp").forward(request,response);
        }
    }
}
