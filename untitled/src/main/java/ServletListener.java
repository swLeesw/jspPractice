import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import javax.servlet.annotation.WebServlet;
//Class파일이므로 서블릿이 아니다.
@WebListener
public class ServletListener implements ServletContextListener {
    //아래 2개의 콜백 메서드는 다른 웹어플리케이션(타 프로젝트)이 실행될 때와 종료될 때에
    //같이 실행이 된다. web.xml에 <listener>태그를 주석처리 하면 이 메서드는 호출이 안됨.

    //톰캣 서버 시작시 자동 호출.
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("contextInitialized()실행");
    }
    //톰캣 서버 중지시 자동 호출.
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("contextDestroyed()실행");
    }
    /*
    서블릿의 실행 순서
    1.contextInitialize()호출
    2.생성자 호출
    3.initPostConstructor()선처리
    4.init()호출
    5.doGet(), doPost()호출
    6.contextDestrodyed()호출
    7.destroy()호출
    8.destroyPredestroy() 후처리
    */
}