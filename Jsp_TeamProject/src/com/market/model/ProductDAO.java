package com.market.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ProductDAO {

	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String sql = null;
	
	// DAO 싱글톤 방식으로 만들기
	private static ProductDAO instance = null;
	
	private ProductDAO() {	}
	
	// getInstance() 메서드
	public static ProductDAO getInstance() {
		
		if(instance == null) {
			instance = new ProductDAO();
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
	
	// 검색을 눌렀을때 인풋에서넘어오는 자료를 DB와 연동하기
	
	public ProductDTO searchProduct(String name) {
		
		ProductDTO dto = new ProductDTO();

		try {
			openConn();
			sql = "select * from product_market where pname like ? order by pnum desc";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto.setPname(rs.getString("pname"));
				dto.setPimage(rs.getString("pimage"));
				dto.setPrice(rs.getInt("price"));
				dto.setPdetails(rs.getString("pdetails"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeConn(rs, pstmt, con);
		}
		return dto;
	} // searchProduct 메서드 end
	
	//안녕하세요
	
}
