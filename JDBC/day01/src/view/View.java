package view;

import java.util.Scanner;

import dao.UserDAO;
import vo.UserVO;

public class View {
	public static void main(String[] args) {
		UserDAO  dao = new UserDAO();
		UserVO user = new UserVO();
		
		
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			
			
			
			break;
		}
		
//		dao.snedTempPW("01037325638");
		
		
//		dao.snedNumber("01037325638");
//		if(dao.ckPhNum("0")) {
//			System.out.println("성공");
//		}else{
//			System.out.println("실패");
//		};
		
		//System.out.println(dao.printID("01099999999"));
		
		//회원가입 
//		user.setAge(10);
//		user.setId("papa");
//		user.setName("수민");
//		user.setPhoneNumber("01011111111");
//		user.setPw("9999");
//		
//		dao.join(user);
		
		
		// 로그인 
//		if(dao.login("papa", "9999")) {
//			System.out.println("로그인 성공");
//		}else 
//			System.out.println("로그인 실패");
//		}
	
		
		
		
		// 아이디 중복검사
//		if(dao.checkId("park")) {
//			System.out.println("중복된 아이디");
//		}else {
//			System.out.println("사용 가능한 아이디");
//		}
//		
	}
}
