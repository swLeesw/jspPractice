import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
//Class파일이므로 서블릿이 아니다.
@WebServlet("/SCL")
public class ServletListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        //ServletContextListener.super.contextInitialized(sce);
        System.out.println("contextInitialized()실행");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        //ServletContextListener.super.contextDestroyed(sce);
        System.out.println("contextDestroyed()실행");
    }
}