package member.controller;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*// 로그인 처리용 컨트롤러
		
		String userId = request.getParameter("userid");
		String userPwd = request.getParameter("userpwd");
		
		Member memberLogin = new MemberService().selectLogin(userId, userPwd);
		
		if(memberLogin != null) {
			//로그인 성공
			response.sendRedirect("/login/index.jsp");
		}else {
			//로그인 실패
			RequestDispatcher view = request.getRequestDispatcher("views/member/memberError.jsp");
			request.setAttribute("message", "로그인 실패!");
			request.setCharacterEncoding("UTF-8");
			view.forward(request, response);
		}*/
		
		//db에 이미지 저장
		String fileName = request.getParameter("file");
		ServletContext context = getServletContext();
		String saveDir = context.getRealPath("bo_2");
		int maxsize = 3*1024*1024;
		String encoding = "UTF-8";
		int result = new MemberService().insertImage(saveDir);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
