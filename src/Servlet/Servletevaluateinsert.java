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

@WebServlet("/Servletevaluateinsert")
public class Servletevaluateinsert extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String testtext = request.getParameter("textarea");
        String text=new String(testtext.getBytes("ISO-8859-1"),"utf-8");
        response.setCharacterEncoding("utf-8");
        String username = new String(request.getParameter("username").getBytes("ISO-8859-1"),"utf-8");
        String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
        String title = request.getParameter("title");
        String avatar=request.getParameter("avatar");
        title = java.net.URLDecoder.decode(title,"UTF-8");
        Evaluate evaluate = new Evaluate();
        evaluate.setText_e(text);
        evaluate.setTitle_e(title);
        evaluate.setName(name);
        evaluate.setUsername(username);
        evaluate.setAvatar(avatar);
        EvaluateDao evaluateDao = new EvaluateDao();
        int row = 0;
        row = evaluateDao.insertevaluate(evaluate);
        HttpSession session = request.getSession();
        if (row>0)
        {
            session.removeAttribute("evaluatelist");
            request.setAttribute("success","发表成功");
            request.getRequestDispatcher("branch_of_story.jsp").forward(request,response);
        }
        else
        {
            request.setAttribute("success","发表失败");
            request.getRequestDispatcher("branch_of_story.jsp").forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
