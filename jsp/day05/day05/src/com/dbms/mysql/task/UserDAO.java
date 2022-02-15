package com.dbms.mysql.task;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
	   Connection conn;
	   PreparedStatement pstm;
	   ResultSet rs;
	   
	   // 아이디 중복검사 
	   public boolean idCk(String userId) {
		   String query ="select count(userId) from `user` where userId = ?";
		   boolean flag = false;
		   try {
			   conn = DBConnection.getConnection();
			   pstm = conn.prepareStatement(query);
			   pstm.setString(1, userId);
			   rs = pstm.executeQuery();
			   rs.next();
			   flag = rs.getInt(1) == 1;
		} catch (SQLException e) {
			System.out.println("idCk() SQL문 오류");
			e.printStackTrace();
		}catch (Exception e) {
			System.out.println("idCk() 오류");
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(pstm!=null) {
					pstm.close();
				}
				if(conn!=null) {
					conn.close();
				}
			} catch (SQLException e) {
				throw new RuntimeException(e);
			}
		}
		   
		   
		   return flag;
		   
	   }
	   
	   
	   
	   
}
