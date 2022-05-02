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
	
	public List<ProductDTO> searchProduct(String name) {
		
		List<ProductDTO> list = new ArrayList<ProductDTO>();

		try {
			openConn();
			sql = "select * from product_market where pname like ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ProductDTO dto = new ProductDTO();
				
				dto.setPnum(rs.getInt("pnum"));
				dto.setPname(rs.getString("pname"));
				dto.setPcategory(rs.getString("pcategory"));
				dto.setPspec(rs.getString("pspec"));
				dto.setPimage(rs.getString("pimage"));
				dto.setPqty(rs.getInt("pqty"));
				dto.setPrice(rs.getInt("price"));
				dto.setPcompany(rs.getString("pcompany"));
				dto.setPdetails(rs.getString("pdetails"));
				dto.setPinputdate(rs.getNString("pinputdate"));
				dto.setPdiscount(rs.getString("pdiscount"));
				
				list.add(dto);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			closeConn(rs, pstmt, con);
		}
		return list;
	} // searchProduct 메서드 end
	
	
}
