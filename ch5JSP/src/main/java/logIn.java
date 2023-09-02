import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/LG")
public class logIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        out.println("<html><head></head>");
        out.println("<body>");
        out.println("id: " + id + "<br/>");
        out.println("pw: " + pw + "<br/>");
        out.println(this.getServletContext().getInitParameter("pEx"));
    }
}
