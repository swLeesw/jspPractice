package main.webapp.sec02;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/choiceCat")
public class dogChoice extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");

        PrintWriter out = response.getWriter();
        String[] cat = request.getParameterValues("cat");

        out.println("<html>");
        out.println("<head></head>");
        out.println("<body bgcolor='green'>");
        out.println("<table align='center' bgcolor='black'");
        out.println(" bordercolor='darkblue'>");
        //<tr> => table row, <td> => 셀 하나 만들기
        for (int i = 0; i < cat.length; i++) {
            out.println("<tr>"); //tr은 행 삽입, td는 셀 삽입(행에 열 삽입)
            out.println("<td>");
            out.println("<img src='" + cat[i] + "' art='catt'; style='width:256px; height:256px;'>");
            out.println("</td>");
            out.println("</tr>");
        }
        out.println("</table>");
        out.println("</body>");
        out.println("<html");
    }

}
