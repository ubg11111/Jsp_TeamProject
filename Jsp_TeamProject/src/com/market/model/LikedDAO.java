package com.market.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class LikedDAO {

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = null;
	
	// DAO 싱글톤 방식으로 만들기
	private static LikedDAO instance = null;
	
	private LikedDAO() {	}
	
	
	// getInstance() 메서드
	public static LikedDAO getInstance() {
		
		if(instance == null) {
			instance = new LikedDAO();
		}
		
		return instance;
	}	// getInstance() 메서드 end

	
	// DB 연동 메서드
	
	public void openConn() {
		
		try {
			// 1단계 : JNDI 서버 객체 생성
			Context ctx = new InitialContext();
			
			// 2단계 : lookup() 메서드로 매칭되는 커넥션 찾기
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");
			
			// 3단계 : DataSource 객체를 이용하여 커넥션 객체 가져오기
			con = ds.getConnection();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}// openConn() 메서드 end
	
	
	// DB 연결 자원 종료
	public void closeConn(ResultSet rs, PreparedStatement pstmt, Connection con) {
		
		try {
			if(rs != null) {
				rs.close();
			}
			
			if(pstmt != null) {
				pstmt.close();
			}
			
			if(con != null) {
				con.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	// closeConn() 메서드 end

	
	// 장바구니 리스트를 받아오는 메세드
	public List<LikedDTO> getLikedList(String id) {
		
		List<LikedDTO> list = new ArrayList<LikedDTO>();
		
		try {
			openConn();
			
			sql = "select * from liked_market where liked_userId = ? order by liked_num desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				LikedDTO dto = new LikedDTO();
				dto.setLiked_num(rs.getInt("liked_num"));
				dto.setLiked_pnum(rs.getInt("liked_pnum"));
				dto.setLiked_userId(rs.getString("liked_userId"));
				dto.setLiked_pname(rs.getString("liked_pname"));
				dto.setLiked_price(rs.getInt("liked_price"));
				dto.setLiked_pimage(rs.getString("liked_pimage"));
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return list;
	}	// getlikedList() 메서드 end


	// 장바구니 아이템 삭제 메서드
	public int deleteLiked(int no) {
		
		int result = 0;
		
		try {
			openConn();
			
			sql = "delete from liked_market where liked_num = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			
			result = pstmt.executeUpdate();
			
			sql = "update liked_market set liked_num = liked_num - 1 where liked_num > ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	}	// deleteLiked() 메서드 end


	// 장바구니 추가 메서드
	public int insertLiked(LikedDTO dto) {
		
		int result = 0, count = 0;
		
		try {
			openConn();
			
			sql = "select max(liked_num) from liked_market";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1) + 1;
			}
			
			sql = "insert into liked_market values(?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, count);
			pstmt.setInt(2, dto.getLiked_pnum());
			pstmt.setString(3, dto.getLiked_userId());
			pstmt.setString(4, dto.getLiked_pname());
			pstmt.setInt(5, dto.getLiked_price());
			pstmt.setString(6, dto.getLiked_pimage());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	}	// insertLiked() 메서드 end


	// 장바구니를 비우는 메서드
	public int deleteAllliked(String id) {
		
		int result = 0;
		
		try {
			openConn();
			
			sql = "delete liked_market where liked_userId = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		
		return result;
	}	// DeleteAllliked() 메소드 end
	
}
