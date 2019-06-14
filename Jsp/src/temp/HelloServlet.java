package temp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/HelloServlet") //Annotation --> HelloServele이라는 것을 찾겟다.
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public HelloServlet() {
            
    }

	// Form 태그 메소드 전송방식에 따라. 기본은 get 방식. 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		//한글 깨지는 경우
		response.setContentType("text/html;charset=utf-8");
		
		//쓰기 통로 얻어오기. 
		//servlet-->Java에 HTML 쓴 것 -->너무 번거롭다!! 
		//그래서 나온 개념이 JSP(반대로 HTML에 자바를 쓰자)
		
		
		PrintWriter out= response.getWriter();
		out.println("<html><head><title>나의 첫서버</title></head>");
		out.println("<body>");
		out.println("<h2>행복한 금요일</h2>");
		out.println("<p>짝꿍님 뭐 드실껴</p>");
		out.println("</body>");
		out.println("</html>");
		
		//쓰고 닫기 필수
		out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
