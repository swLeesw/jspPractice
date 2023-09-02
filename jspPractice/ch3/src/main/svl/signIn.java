package main.svl;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SL")
public class signIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String[] tmp = request.getParameterValues("hobby");

        for (int i = 0; i < tmp.length; i++) {
            out.println(tmp[i] + '\n');
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        String[] hb = request.getParameterValues("hobby");
        String major = request.getParameter("major");
        String protocol = request.getParameter("protocol");

        out.println("<html>");
        out.println("<head>");
        out.println("<meta charset='UTF-8'>");

        out.println("</head>");
        out.println("<body>");
        out.println("<table border='1'>");

        out.println("<th>아이디</th>");
        out.println("<th>패스워드</th>");
        out.println("<th>취미</th>");
        out.println("<th>전공</th>");
        out.println("<th>프로토콜</th>");

        out.println("<tr>");
        out.println("<td>" + id + "</td>");
        out.println("<td>" + pw + "</td>");
        out.println("<td>" + hb[0] + "</td>");
        out.println("<td>" + major + "</td>");
        out.println("<td>" + protocol + "</td>");
        out.println("</tr>");
        out.println("</table><br/>");
        out.println("<a href='tagTest.html'>go to sign in</a>");
        out.println("</body>");


        out.println("</html>");

        out.close();

    }
}
