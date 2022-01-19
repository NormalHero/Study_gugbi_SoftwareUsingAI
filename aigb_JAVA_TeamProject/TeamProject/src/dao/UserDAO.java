package dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import vo.UserVO;


public class UserDAO {

	   public static int userNumber= 3; //테스트를 위한 임의에 회원번호 
	   
	   Connection conn;
	   PreparedStatement pstm;
	   ResultSet rs;

	 
	   
	  
	   public ArrayList<String> test() throws SQLException {
		   ArrayList<String> users = new ArrayList<>();
	      String query = "SELECT * FROM UserTable";
	      try {
	          conn = DBConnecter.getConnection();
	          pstm = conn.prepareStatement(query);

	          rs = pstm.executeQuery();
	         
	         
	         
	          while (rs.next()) {
	        	  users.add(rs.getString(2));
	          }

	       
	         
	      } catch (Exception e) {
	    	  System.out.println(e);
	         System.out.println("test() 알 수 없는 오류");
	         
	      } finally {
	         try {
	            if(pstm != null) {
	               pstm.close();
	            }
	            if(conn != null) {
	               conn.close();
	            }
	         } catch (SQLException e) {
	            throw new RuntimeException(e);
	         }
	      }
	      return users;
	   }
	   
	   
		// 마이페이지는 로그인이 상태에서만 사용가능
		// 마이페이지 내정보 조회
		public UserVO getMyInfo() {
			UserVO vo = new UserVO();
			String query ="SELECT userId, userPw, userName, userAge, userPhonNum, userGender, userRegion, userStatus FROM UserTable WHERE UserNum = ?";
			
			
			if (userNumber == 0) {return null;} // 0 이면 로그인이 되지않은 상태로 null을 리턴한다. 
			try {
				conn = DBConnecter.getConnection();
				pstm = conn.prepareStatement(query);
				pstm.setInt(1, userNumber);
				rs = pstm.executeQuery();
				
				
				if(rs.next()) {
					vo.setUserNum(userNumber); 
					vo.setUserId(rs.getString(1));
					vo.setUserPw(rs.getString(2));
					vo.setUserName(rs.getString(3));
					vo.setUserAge(rs.getDate(4)); // date타입으로 생일이 저장된 생일을 계산하여 나이로 변환하여 나타내주어야한다.  
					vo.setPhonNum(rs.getString(5));
					vo.setUserGender(rs.getString(6).charAt(0));
					vo.setUserRegion(rs.getString(7));
					vo.setUserStatus(rs.getInt(8));
					
				}
				
			} catch (SQLException e) {
				System.out.println("getMyInfo() 오류");
			}
			
			return vo;
			
			
		}
		 public int getAge(Date date){
			 
			 Calendar calendar = Calendar.getInstance();
			// 3. Date 객체를 Calendar로 변환
			calendar.setTime(date);
			System.out.println(calendar.getTime());
			int birthYear = calendar.get(Calendar.YEAR);
			int birthMonth = calendar.get(Calendar.MONTH);
			int birthDay = calendar.get(Calendar.DAY_OF_MONTH);
			
	        Calendar current = Calendar.getInstance();
	        int currentYear  = current.get(Calendar.YEAR);
	        int currentMonth = current.get(Calendar.MONTH) + 1;
	        int currentDay   = current.get(Calendar.DAY_OF_MONTH);
	      
	        int age = currentYear - birthYear;
	        // 생일 안 지난 경우 -1
	        if (birthMonth * 100 + birthDay > currentMonth * 100 + currentDay) 
	            age--;
	      
	        return age;
			
	        // 만 나이로 계산 -- 네이버 생일 나이 검색과 동일함

		 }
	   

	   
}
