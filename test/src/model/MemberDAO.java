package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	public boolean confirm(String id){
		boolean result = true;
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)
					context.lookup("java:comp/env/jdbc/oraDB");
			conn = ds.getConnection();	
			stmt = conn.prepareStatement(
					"select * from member where trim(m_id) = ?");
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()) {
				result = false;
			}
		}catch(Exception e){
			result = false; 
			System.out.println("예외 발생!" + e);
		}finally{
			try{
				stmt.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public boolean insert(MemberDBVO mdbvo){
		boolean result = true;
		Connection conn = null;
		PreparedStatement stmt = null;
		try{
			Context context = new InitialContext();
			DataSource ds = (DataSource)
					context.lookup("java:comp/env/jdbc/oraDB");
			conn = ds.getConnection();		
			stmt = conn.prepareStatement(
					"insert into member values(?,?,?,sysdate,?)");
			stmt.setString(1, mdbvo.getId());
			stmt.setString(2, mdbvo.getPassword());
			stmt.setString(3, mdbvo.getName());
			stmt.setInt(4, mdbvo.getNumber());
			stmt.executeUpdate();
		}catch(Exception e){
			result = false; 
			System.out.println("예외 발생!" + e);
		}finally{
			try{
				stmt.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return result;
	}
}
