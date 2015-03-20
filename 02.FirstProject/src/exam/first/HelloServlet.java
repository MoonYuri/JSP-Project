package exam.first;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet") /*URL 맵핑*/ 
public class HelloServlet extends/*상속*/ HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet()/*생성자 why?클래스이름과 같아*/ {
        super();/*부모생성자호출*/
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");//<br>이랑 한글인식
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//out.print("<html>");
		out.print("Hello - GET<br>");
		out.print("이름 : " + name + "<br>");
		out.print("아이디 : " + id + "<br>");
		out.print("비밀번호 : " + pwd + "<br>");
		//out.print("</html>");
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");// 보내는 데이터의 한글인식
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//out.print("<html>");
		out.print("Hello - GET<br>");
		out.print("이름 : " + name + "<br>");
		out.print("아이디 : " + id + "<br>");
		out.print("비밀번호 : " + pwd + "<br>");
		//out.print("</html>");
	}

}
