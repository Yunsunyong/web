package member.model.service;

import member.model.dao.MemberDao;
import member.model.vo.Member;

import static common.JDBCTemplate.*;

import java.sql.Connection;

public class MemberService {
	private MemberDao mdao = new MemberDao();
	
	public MemberService() {}
	
	public Member selectLogin(String userId, String userPwd) {
		Connection conn = getConnection();
		Member member = mdao.selectLogin(userId, userPwd, conn);
		close(conn);
		return member;
	}
	
	public int insertImage(String imageRoute) {
		Connection conn = getConnection();
		int result = mdao.insertImage(conn, imageRoute);
		close(conn);
		return result;
	}
}
