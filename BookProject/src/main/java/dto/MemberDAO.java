package dto;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import dto.MemberVO;

import util.DBManager;

public class MemberDAO {
	
	private static MemberDAO instance;
	
	private MemberDAO() {}
	
	public static MemberDAO getInstance() {
		if(instance==null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context con = new InitialContext();
			DataSource ds = (DataSource)con.lookup("java:comp/env/jdbc/OracleDB");
			conn= ds.getConnection();
		} catch(Exception e) {
			System.out.println(e.getMessage());
		}
		return conn;
	}
	
	public int confirmID(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = -1;

		String sql = "select pass from member where id=?";

		try {
			conn = getConnection(); // DB 연결 시도
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();

			if (rs.next()) { 
				result = 1;
			} else {
				result = -1;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public MemberVO selectOneMemberById(String id) {
		String sql = "select * from member where id = ?";
		MemberVO mVO = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mVO = new MemberVO();
				mVO.setId(rs.getString("id"));
				mVO.setPass(rs.getString("pass"));
				mVO.setName(rs.getString("name"));
				mVO.setPhone(rs.getString("phone"));
				mVO.setEmail(rs.getString("email"));
				mVO.setLev(rs.getString("lev"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return mVO;
	}

	
	//회원 추가
    
    public int insertMember(MemberVO mVo) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int result = 0;

		String sql = "insert into member values(?, ?, ?, ?, ?, ?)";

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mVo.getId());
			pstmt.setString(2, mVo.getPass());
			pstmt.setString(3, mVo.getName());
			pstmt.setString(4, mVo.getPhone());
			pstmt.setString(5, mVo.getEmail());
			pstmt.setString(6, mVo.getLev());	//일반 B 관리자 A

			result = pstmt.executeUpdate(); // 성공하면 insert가 성공한 행의 수를 반환, 싪패하면 0
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (conn != null) {
					conn.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (rs != null) {
					rs.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

    

}