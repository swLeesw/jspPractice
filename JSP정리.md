# JSP 정리

### 기본 용어

- 웹 서버(Web Server): 사용자로부터 HTTP를 통해 요청을 받거나, 웹 컨테이너가 전달해준 결과물을 정적인 페이지로 생성하여 사용자에게 응답해주는 소프트웨어.
- 웹 컨테이너(Web Container): 웹 서버가 전송해준 요청을 기초로 동적인 페이지를 생성하여 웹 서버로 돌려줌.
- WAS(Web Application Server): 웹 애플리케션이 실행될 수 있는 환경을 제공하는 소프트웨어. 컴퓨터에서 운영체제와 비슷한 역할을 함(대표적으로 tomcat이 있다.)
- HTTP: www에서 웹 서버와 사용자 사이의 통신을 위해 사용하는 통신 프로토콜.
- 포트(port): 컴퓨터 사이에서 데이터를 주고받을 수 있는 통로. IP 주소는 컴퓨터의 위치를 파악, Port는 컴퓨터가 제공하는 특정 서비스의 경로를 알려줌.
- 동적 웹페이지: 동일한 페이지라 할지라도 그때그때 내용이 달라질 수 있는 웹페이지.
- 서블릿(Servlet): 클라이언트의 요청을 받으면 서버에서 처리한 후,응답으로 결괏값(HTML페이지)만을 보내주는 구조.(MVC 패턴에서 Controller 역할을 맡음)
- JSP(Java Server Page): java언어를 사용하여 서버측에서 웹페이지를 생성해 웹브라우저로 전송

## 지시어(Directive)

JSP페이지를 서블릿 코드로 변환하는 데 필요한 정보를 JSP 엔진에 알려줌.

### 기본 구문

```
<%@ 지시어종류 속성1="값1" 속성2="값2" ... %>

```

### 지시어 종류

- page 지시어: JSP페이지에 대한 정보를 설정.
- include 지시어: 외부 파일을 현재 JSP 페이지에 포함시킴.
- taglib 지시어: 표현 언어에서 사용할 자바 클래스나 JSTL을 선언.

### page 지시어(자주 쓰이는 것들)

| 속성        |                                   내용                                   | 기본값 |
| ----------- | :----------------------------------------------------------------------: | :----: |
| session     |                JSP페이지가 세션을 사용할지의 여부를 지정                    |  true  |
| buffer      |                 jsp페이지의 출력 버퍼크기를 지정한다.                      | 최소 8kb|
| language    |                  페이지에서 사용할 스크립팅 언어를 지정                    |  java  |
| contentType |                    페이지에서 생성할 MIME 타입을 지정                      |text/htm|
| **import**  |            **페이지에서 사용할 자바 패키지와 클래스를 지정**             |  없음  |
| errorPage   | 해당 페이지에서 에러가 발생했을 때 에러 발생 여부를 보여줄 페이지를 설정      |  없음  |
| isErrorPage |                해당 페이지가 에러를 처리할지 여부를 지정                    | false  

\*contentType="text/html; charset=UTF-8"이게 기본적

### include 지시어

#### include지시어의 형식

```
<%@ include file="포함할 파일의 경로"%>

```

## 스크립트 요소

### 선언부(Declaration)

스크립틀릿이나 표현식에 사용할 맴버 변수나 메서드를 선언(전역)

#### 선언부의 형식

```
<%! 메서드 선언 %>

```

### 스크립틀릿(Scriptlet)

JSP 페이지가 요청을 받을 때 실행돼야 할 자바 코드를 작성하는 영역.

#### 선언부의 형식

```
<% 자바 코드 %>

```

### 표현식(Expression)

상수, 변수, 반환값이 있는 메서드 등의 하나의 값이 남는 문장을 출력

#### 선언부의 형식

```
<%= 자바 Expression %>

```

## 내장 객체의 영역
각 객체가 저장되는 메모리의 유효기간
### 내장 객체의 영역 4가지

- page 영역: 동일한 페이지에서만 공유. 페이지를 벗어나면 소멸(pageContext)
- request 영역: 하나의 요청에 의해 호출된 페이지와 포워드(요청전달)된 페이지까지 공유.(request)
- session 영역: 클라이언트가 처음 접속한 후 웹 브라우저를 닫을 때까지 공유
- application 영역: 한 번 저장되면 웹 애플리케이션이 종료될 때까지 유지
범위를 나타내면 page < request < session < application으로 나눌 수 있다.
### 주요 API
- void setAttribute(String name, Object value): 각 영역의 속성 저장.
- Object get Attribute(String name): 영역에 저장된 속성값을 얻어옴.
- void removeAttribute(String name): 영역에 저장된 속성을 삭제.

### page 영역 함수
```
pageContext.setAttribute("name", value); //속성 저장
pageContext.getAttribute("name"); //속성 읽기 (앞에 명시적 형변환 필요)

```

### request 영역 함수
```
request.setAttribute("name", value); //속성 저장
request.getAttribute("name"); //속성 읽기
//request 내장 객체를 통해 실제 포워드를 수행하는 코드
request.getRequestDispattcher("포워드할 파일 경로").forward(request, response);
//포워드시 쿼리스트링으로 매개변수도 전달 가능
```

### session 영역 함수
```
session.setAttribute("name", value);
session.getAttribute("name");
//session은 웹브라우저가 종료되기 전까지 모든 영역에서 이용 가능.
```

## JSP페이지 액션 태그

### 페이지 액션 태그의 종류

| 액션 태그명 |  액션 태그      | 설명 |
| ----------- | :-------------: | :----: |
| include    |  \<jsp:include\>  | 다른 페이지의 실행 결과를 현재의 페이지에 포함시킬 때 사용  |
|forward     |\<jsp:forward\>    |페이지 사이의 제어를 이동할 때 사용                        |
| plug-in    |  \<jsp:plug-in\>  | 웹 브라우저에서 자바 애플릿을 실행시킬 때 사용             |
| useBean    |  \<jsp:useBean\>  | 자바빈을 JSP 페이지에서 사용할 때 사용                    |
| setProperty| \<jsp:setProperty\>| 프로퍼티의 값을 세팅할 때 사용                           |
|getProperty| \<jsp:getProperty\> | 프로퍼티의 값을 얻어낼 때 사용                           |

### include 태그
```
<%@include file=""%><!--page지시자의 대체-->
---------------------------------------------
<jsp:include page="추가시킬 페이지"><!--사이에 파라매터 전달 가능-->
  <jsp:param name="" value=""\>
</jsp:include>
```
지시자를 통한 include와 다르게 추가시킬 페이지에 매개변수를 전달할 수 있다.

### forward 태그
```
<%
  //redirection의 대체 forward
  request.sendRedirection("이동할 페이지");
%>
---------------------------------------------
<!--만약 parameter의 id가 같으면 태그 안에 새로 정의한 parameter가 덮어 씌워진다.
    이동할 페이지에 있는 param < 새로 정의한 param-->
<jsp:forward page="이동할 페이지">
  <jsp:param name="" value=""\>
</jsp:forward page="이동할 페이지">
```
브라우저의 주소가 이동할 페이지로 바뀌는 것이 아닌 현재 페이지에서 이동할 페이지의 화면을 보여준다. 이로 인해 현재 페이지에 있는 매개변수를 사용 가능하다.

### useBean 태그
##### Java Bean이란?
DataBase와 JSP간의 데이터를 쉽게 주고받기위해 사용하는 java클래스
##### 사용법
```
<!-- request로 넘어온 데이터를 자바 빈즈랑 맵핑시켜주는 useBean -->
        <jsp:useBean id="객체" class="클래스"><!-- 객체생성 클래스 객체 = new 클래스(); -->
        <!-- Jsp 내용을 자바빈 클래스에 데이터를 맵핑-->
            <jsp:setProperty name="객체" property="맴버변수"/>
            <jsp:setProperty name="객체" property="*"/><!--*는 자동으로 모두 맵핑-->
        </jsp:useBean>
        <!--출력하는 법-->
        <jsp:getProperty name="객체" property="맴버변수"/><br>
        <%=객체.맴버변수반환함수()%>
```
클래스 파일을 만들고, 클래스의 맴버변수들을 form 내부의 input tage의 id와 1대1 대응시킨다. 그 후 맴버변수에 대한 getter, setter함수를 만들고(선택사항) jsp에 위와 같은 코드를 쓴다. 

#### 데이터베이스 연동 및 매핑
```
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

//오라클 데이터 베이스에 연결하고  select, insert, update, delete작업을 실행해주는 클래스.
public class MemberDAO {

    //데이터 베이스에 접근할 수 있도록 도와주는 메소드
    String myid = "system";
    String mypass = "1234";
    String myurl = "jdbc:oracle:thin:@localhost:1521:XE";//접속 url(로컬호스트, 포트151, 오라클 버전)

    Connection con; //데이터 베이스에 접근할 수 있도록 설정
    PreparedStatement pstmt; //데이터 베이스에서 쿼리를 실행시켜주는 객체
    ResultSet rs; //데이터 베이스의 테이블의 결과를 리턴받아 자바에 저장해주는 객체

    public void getCon() {
        try{
            //1.해당 데이터 베이스를 사용 한다고 선언(클래스를 등록 = 오라클을 사용)
            //Class.forName("oracle.jdbc.driver.OracleDriver");//ojdbc안의 패키지(jsp와 dv를연결해준다)
            Class.forName("oracle.jdbc.OracleDriver");//ojdbc안의 패키지(jsp와 dv를연결해준다)
            //2.해당 데이터 베이스에 접속
            con = DriverManager.getConnection(myurl, myid, mypass);
        }
        catch(Exception e) {
            e.printStackTrace();;
        }
    }

    //데이터 베이스에 한 사람의 회원 정보를 저장해주는 함수
    public void insertMember(MemberBean mbean) {
    //mbean은 member정보를 담기 위해 만든 사용자 정의 클래스
        try{
            getCon();
            //3.접속 후 쿼리준비하여 쿼리를 사용하도록 설정
            String sql="INSERT INTO MEMBER VALUES(?,?,?,?,?,?,?,?)";//8개 넣기
            //3-1.쿼리를 사용하도록 설정
            pstmt = con.prepareStatement(sql);//jsp에서 쿼리를 사용하도록 설정
            //3-2.?에 맞게 데이터를 맵핑(?에 들어갈 말들)
            pstmt.setString(1, mbean.getId());//idx는 1번부터 시작
            pstmt.setString(2, mbean.getPw());
            pstmt.setString(3, mbean.getEmail());
            pstmt.setString(4, mbean.getTell());
            pstmt.setString(5, mbean.getHobby());
            pstmt.setString(6, mbean.getJob());
            pstmt.setString(7, mbean.getAge());
            pstmt.setString(8, mbean.getInfo());
            //4.오라클에서 쿼리를 실행하시오
            pstmt.executeUpdate();//insert, update, delete 시 사용하는 메소드
            //5.자원 반납
            con.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    //모든 회원의 정보를 리턴해주는 메소드 호출
    public Vector<MemberBean> allSelectMember() {
        Vector<MemberBean> v = new Vector<>();
        try{
        //커넥션 연결
        getCon();
        //쿼리 준비(sql문)
        String sql = "SELECT * FROM MEMBER";
        //쿼리를 실행시켜주는 객체 선언
        pstmt = con.prepareStatement(sql);
        //쿼리를 실행 시킨 결과를 리턴해서 받아줌(오라클 테이블의 검색된 결과를 자바객체에 저장)
        rs = pstmt.executeQuery();
        //반복문을 사용해서rs(result set)에 저장된 데이터를 추출해놓아야 함
        while(rs.next()) {//저장된 데이터 만큼까지 반복문을 돌리겠다는 뜻
            MemberBean bean = new MemberBean();//컬럼으로 나눠진 데이터를 빈클래스에 저장
            bean.setId(rs.getString(1));//1번컬럼의 내용 셋팅
            bean.setPw(rs.getString(2));
            bean.setEmail(rs.getString(3));
            bean.setTell(rs.getString(4));
            bean.setHobby(rs.getString(5));
            bean.setJob(rs.getString(6));
            bean.setAge(rs.getString(7));
            bean.setInfo(rs.getString(8));
            v.add(bean);
        }
        con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return v;
    }

    public MemberBean selectMember(String pid) {
        MemberBean mbean = new MemberBean();
        try{
            //연결
            getCon();
            //쿼리준비
            String sql = "SELECT * FROM MEMBER WHERE id = ?";
            //객체 선언
            pstmt = con.prepareStatement(sql);
            //?에 값을 맵핑
            pstmt.setString(1, pid);//parameterIndex1번에 id를 삽입
            //쿼리문 실행
            rs = pstmt.executeQuery();
            if (rs.next()) {//레코드가 존재한다면
                mbean.setId(rs.getString(1));
                mbean.setPw(rs.getString(2));
                mbean.setEmail(rs.getString(3));
                mbean.setTell(rs.getString(4));
                mbean.setHobby(rs.getString(5));
                mbean.setJob(rs.getString(6));
                mbean.setAge(rs.getString(7));
                mbean.setInfo(rs.getString(8));
            }
            con.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return mbean;
    }

}

```
