import javax.servlet.*;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = {"/AIP"}, initParams = {
        @WebInitParam(name="id", value="seungwon"),
        @WebInitParam(name="pw", value="1234")

})
//initParams는 스트링 배일 느낌이다, @WebInitParam으로 파라메터 정의
public class annotationIP extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; setChar=UTF-8");
        PrintWriter out = response.getWriter();
        String id = this.getInitParameter("id");
        String pw = this.getInitParameter("pw");

        String adminId = this.getServletContext().getInitParameter("adminId");
        String adminPw = this.getServletContext().getInitParameter("adminPw");
        out.println(id + " " + pw + '\n' + adminId + " " + adminPw);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
