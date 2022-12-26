package dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import util.DBManager;

public class BookDAO{

	public BookVO selectOneBookByNum(int num) {
		String sql = "select * from book where num = ?";
		
		BookVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				bVo = new BookVO();
				
				bVo.setNum(rs.getInt("num"));
				bVo.setCategory(rs.getString("category"));
				bVo.setTitle(rs.getString("title"));
				bVo.setPrice(rs.getString("price"));
				bVo.setSummary(rs.getString("summary"));
				bVo.setAuthor(rs.getString("author"));
				bVo.setPub(rs.getString("pub"));
				bVo.setGrade(rs.getString("grade"));
				bVo.setPictureurl(rs.getString("pictureurl"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return bVo;
	}
	public void updateBook(BookVO bVo) {
		String sql = "update book set category=?, title=?, price=?, "
				+ "summary=?, author=?, pub=?, grade=? where num=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bVo.getCategory());
			pstmt.setString(2, bVo.getTitle());
			pstmt.setString(3, bVo.getPrice());
			pstmt.setString(4, bVo.getSummary());
			pstmt.setString(5, bVo.getAuthor());
			pstmt.setString(6, bVo.getPub());
			pstmt.setString(7, bVo.getGrade());
			pstmt.setInt(8, bVo.getNum());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
	}
	public List<BookVO> selectAllBooks() {
			String sql = "select * from book order by num asc";
			
			List<BookVO> list = new ArrayList<BookVO>();
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				
				rs = pstmt.executeQuery(sql);
				
				while (rs.next()) {
					BookVO bVo = new BookVO();
					
					bVo.setNum(rs.getInt("num"));
					bVo.setCategory(rs.getString("category"));
					bVo.setTitle(rs.getString("title"));
					bVo.setPrice(rs.getString("price"));
					bVo.setSummary(rs.getString("summary"));
					bVo.setAuthor(rs.getString("author"));
					bVo.setPub(rs.getString("pub"));
					bVo.setGrade(rs.getString("grade"));
					/* bVo.setPictureurl(rs.getString("pictureurl")); */
					
					list.add(bVo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				DBManager.close(conn, pstmt, rs);
			}
			return list;
		}
	public static BookDAO getInstance() {
		// TODO Auto-generated method stub
		return null;
	}

}