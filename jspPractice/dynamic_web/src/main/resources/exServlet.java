import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class exServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("hellooooo");
    }
    //요청 응답 객체들을 받아 get쓸 지 post 쓸 지
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
