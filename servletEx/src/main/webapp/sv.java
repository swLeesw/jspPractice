import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

//@WebServlet(name = "sv", urlPatterns = "/SE")
@WebServlet("/SE")//web.xml에 지정한 패턴이 있으면 적용이 안됌.
public class sv extends HttpServlet {
    //생성자
    public sv() {

    }

    @Override
    //doGet()은 폼을 출력하는 형태로 쓰임
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("hi");
        System.out.println("hihi");
    }

    @Override
    //doPost()메서드는 데이터를 가공이나 처리코드를 실행할 때 많이 쓰임
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        out.print("bye");
    }
    //1.jsp파일: HTML파일 내에 jsp코드를 넣은 것
    //2.servlet파일: java파일, 매핑을 해줘야함.
}
