package main.svl;

import com.sun.org.apache.xml.internal.utils.StringToIntTable;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/GU")
public class gugu extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("gudan");
        if (id == null) {
            // 원래 페이지로 돌아가게
            response.sendRedirect("gugudan.html");
            return;
        }

        int first = Integer.parseInt(id);

        if (first <= 0 || first > 10) {
            out.println("<html>");
            out.println("<head></head>");
            out.println("<body>");
            out.println("1부터 9까지의 수만 입력하세요.");
            out.println("<a href='gugudan.html'>go</a>");
            out.println("</body>");
            out.println("</html>");
            return;
        }
        out.println("<html>");
        out.println("<head><meta charset='UTF-8'></head>");
        out.println("<body>");
        out.println("<table border=1 width=800 align=center>");
        out.println("<th></th>");
        out.println("<th></th>");
        out.println("<th>결과값</th>");
        out.println("<tr>");;
        String puple[] = {"#9748A2", "#58FA82"};
        for (int i = 1; i < 10; i++) {
        out.println("<tr bgcolor='" + puple[i % 2] + "'>");;
        out.println("<td>" + first + "</td>");;
        out.println("<td>" + i + "</td>");;
        out.println("<td>" + first * i + "</td>");;
        out.println("</tr>");;
        }
        out.println("</table>");

        out.println("<a href='gugudan.html'>go</a>");
        out.println("</body>");
        out.println("</html>");



    }
}
