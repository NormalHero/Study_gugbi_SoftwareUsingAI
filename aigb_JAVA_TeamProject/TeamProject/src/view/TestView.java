package view;

import java.sql.SQLException;
import java.util.ArrayList;

import dao.UserDAO;
import vo.UserVO;

public class TestView {
	public static void main(String[] args) throws SQLException {
		UserDAO dao = new UserDAO();
		ArrayList<String> datas = dao.test();
		
		UserVO user = new UserVO();
		
		
		user = dao.getMyInfo();
		
		System.out.println("아이디: "+user.getUserId());
		System.out.println("성별: "+user.getUserGender());
		System.out.println("나이: "+user.getUserAge());
		System.out.println("전화번호: "+user.getPhonNum());
		System.out.println(dao.getAge(user.getUserAge()));
		
		
		//로그인
		// 메뉴 -> 마이페이지
		// UserTable 조회 , UserRecordTable 조회 
		// 
		// 
		
		
	/*	
	 *  DB 연결테스트 
	 * for (int i = 0; i < datas.size(); i++) {
			System.out.println(datas.get(i));
		}
		
		 
		for (String data:datas ) {
			System.out.println(data);
		}
		*/
		
		
	}
}
