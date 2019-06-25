package mvc.simple;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	String jspDir = "/05_mvc_class/1_mvcSimple/";
  
    public SimpleControl() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	
	}
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 이전 화면에서 넘겨받는 값을 얻어올 때. :request.getParameter()
		// request에 데이터 저장. : request.setAttribute("name",value) //세션과 같은 개념. value에 오브젝트형 넣을 수 있음.즉 어레이리스트 가능
		// request에서 데이터를 얻어올 때 : request.getAttribute("name") 
		String type = request.getParameter("type");
		String value = "오늘도 화이팅";
		if(type ==null) {
			value = "우리조단합";
		}
		request.setAttribute("param", value);
		
		
		// forwarding !!!<jsp:forward page = "파일경로"/>
		RequestDispatcher dispatcher = request.getRequestDispatcher(jspDir+"simpleView.jsp"); 
		//<jsp:forward>를 자바형으로 변경해주는것
		// request.getRequestDispatcher(파일경로);
		dispatcher.forward(request, response);
	}

}
