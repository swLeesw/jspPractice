package main.webapp.sec02;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
@WebServlet("/notT")
//어노테이션 매핑시 릴리즈 후 수정시 자바소스파일을 건들게 됨.
//web.xml을 이용해서 매핑하는 방법이 유지보수에는 좋음. 경우에 따라 쓰자.
public class nowTime extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=utf-8");
        //응답객체는 text.html코드로 돌려주고(응답하고) 유니코드(문자셋)는 utf-8
        //response는 서블릿이 클라이언트로 응답을 보내기 위한 객체
        PrintWriter out = response.getWriter();
        //PrintWriter: 문자 데이터 출력 클래스 생성, 웹브라우저에 텍스트 데이트 출력
        //response.getWriter: 서블릿에서 HTTP응담을 작성하기 위한 객체를 얻기 위해 사용(출력 스트림을 얻어옴)
        //getWriter메서드를 호출하여 클라이언트로 데이터를 보낼 수 있는 스트림을 얻는 것.

        out.println("<HTML>");
        out.println("<HEAD><TITLE>현재시간</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("지금 시간은");
        out.println(new Date());
        out.println("입니다.");
        out.println("</BODY>");
        out.println("</HTML>");
        System.out.println("hihi");//콘솔로 보내는 명령
    }

    //doGet()방식은 url값으로 정보가 전송딤
    //doPost()방식은 header를 이용해 정보 전송(보안에 강함)
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
