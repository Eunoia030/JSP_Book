package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import book.Action;
import dto.MemberDAO;
import dto.MemberVO;
public class MemberJoinAction implements Action {
	
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		MemberVO mVO = new MemberVO();
		
		mVO.setName(request.getParameter("name"));
		mVO.setId(request.getParameter("id"));
		mVO.setPass(request.getParameter("pass"));
		mVO.setEmail(request.getParameter("email"));
		mVO.setPhone(request.getParameter("phone"));
		mVO.setLev(request.getParameter("lev"));
		
		MemberDAO mDAO = MemberDAO.getInstance();
		mDAO.insertMember(mVO);
		
		int result  = mDAO.insertMember(mVO);
		
		HttpSession session = request.getSession();
		
		if(result==1) {
			session.setAttribute("id", mVO.getId()); 
			request.setAttribute("message", "회원가입에 성공했습니다.");
		}else {
			request.setAttribute("message", "회원가입에 실패했습니다.");
		}
		
		new MemberJoinAction().execute(request, response);
	}
}