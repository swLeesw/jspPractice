package main.webapp.sec02;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //클라이언트가 요청한 매개변수 값 인코딩 설정
        request.setCharacterEncoding("utf-8");
        //클라이언트에서 넘어오는 id, 비밀번호 값을 받고 인코딩 설정 후 출력 스트림을 얻음
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");

        PrintWriter out = response.getWriter();
        out.println("id: " + id + "<br/>pass: " + pass); //""안에 \n을 넣어도 띄어쓰기 됩니다.
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //클라이언트가 요청한 매개변수 값 인코딩 설정
        request.setCharacterEncoding("utf-8");
        //클라이언트에서 넘어오는 id, 비밀번호 값을 받고 인코딩 설정 후 출력 스트림을 얻음
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");

        PrintWriter out = response.getWriter();
        out.println("id: " + id + "<br/>pass: " + pass); //""안에 \n을 넣어도 띄어쓰기 됩니다.
    }
}
