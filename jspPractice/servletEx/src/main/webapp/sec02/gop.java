package main.webapp.sec02;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
//urlpatterns를 /gop로 설정
@WebServlet("/gop")

public class gop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet 호출");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>hi</html>");
        out.println("<body>");
        out.println("<h1>doGet방식.</h1>");
        out.println("</body>");
        out.println("</html>");

        out.close();
    }

//    doPost()방식으로 전송하고 싶으면 태그를 post로 변경시켜야한다.
//    <form method="post" action="gop">
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost 호출");
        response.setContentType("text/html; charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print("hi");
        out.println("<html>");
        out.println("<head>hi</html>");
        out.println("<body>");
        out.println("<h1>doPost방식.</h1>");
        out.println("</body>");
        out.println("</html>");

        out.close();
    }
}
