package exam.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlettwo
 */
@WebServlet("/TestServlettwo")
public class TestServlettwo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlettwo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");//요청받은 내용 한글인식
		response.setContentType("text/html; charset=UTF-8");//<br>이랑 한글인식
			
		String n = request.getParameter("name");//test.jst에서이름을가져오겠다
		String pwd = request.getParameter("pwd");	//input타입의 네임과같게!!!
		String g = request.getParameter("gender");//내가 name="a"이면 이곳에 a
		
		String c = request.getParameter("myc");
		String e = request.getParameter("myEmail");
		
		String[] hobby = request.getParameterValues("hobby");
		String f = request.getParameter("subject");
		String h = request.getParameter("text");
		
		PrintWriter out = response.getWriter();//클라이언트에게 내려보내는 값 선언
		
		//out.print("<html>");
		out.print("Hello - GET<br>");
		out.print("이름 : " + n + "<br>");
		out.print("패스워드 : " + pwd + "<br>");
		out.print(g + "<br>");
		out.print(c + "<br>");
		out.print("이메일 : " + e + "<br>");
		
		if(hobby == null)
			out.print("선택하세요.");
		else
			out.print(hobby.length + "개 선택!");
			
			for(int i=0; i<hobby.length; i++)
				out.print(hobby[i] + "<br>");
			
		out.print(f + "<br>");
		out.print(h + "<br>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
