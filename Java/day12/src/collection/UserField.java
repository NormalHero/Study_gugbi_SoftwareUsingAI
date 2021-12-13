package collection;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;
import java.util.Scanner;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class UserField {
	// 회원을 저장할 자료구조 선언  (이름,아이디, 비밀번호, 핸드폰번호)


	static public int pwFind(String name, String phonNumber,ArrayList<User> userList ) {
		
		for (int i = 0; i < userList.size(); i++) {
			if(userList.get(i).getName().equals(name) && userList.get(i).getPhonNumber().equals(phonNumber) ) {
				
				return i;
				// 일치하는 이름과 전화번호가 있다면 인덱스번호를 리턴 
			}
		}
		return -1;
		
	}
	
	static public boolean checkId(String id,ArrayList<User> userList) {
		for (int i = 0; i < userList.size(); i++) {
			if(userList.get(i).getId().equals(id)) {
				return false;
			}
		}
		return true;
	}

	public static void main(String[] args) {

		Scanner sc = new Scanner(System.in);

		ArrayList<User> userList = new ArrayList<>();
		int choice =0;

		String name="";
		String id="";
		String pw = "";
		String phonNumber = "";

		String en_pw = "";
		String de_pw = "";


		while(true) {
			System.out.println("안녕하세요! \n1. 로그인 \n2. 회원가입 \n3. 비밀번호 찾기 \n4. 나가기" );
			choice = sc.nextInt();
			if(choice ==1)		{
				//  로그인
				System.out.println("로그인할 ID를 입력하세요.");
				id = sc.next();
				System.out.println("로그인할 PW를 입력하세요.");
				for (int i = 0; i < en_pw.length(); i++) {
					de_pw += (char)(en_pw.charAt(i) / 3);
				}
				pw = sc.next();


				for (int i = 0; i < userList.size(); i++) {
					if(userList.get(i).getId().equals(id) && userList.get(i).getPw().equals(id) ) {

						System.out.println("로그인 성공!");
						break;
					}

				}




			}else if(choice == 2) {
				// 회원가입




				System.out.println("이름을 입력하세요!");
				name = sc.next();



				while(true) {
					System.out.println("사용하실 아이디를 입력하세요!");
					id = sc.next();
					if(UserField.checkId(id, userList)) {
						break;
					}else {
						System.out.println("이미 존재하는 ID입니다 다시 입력해주세요!");
					}
				}

				System.out.println("비밀번호를 입력하세요! ");
				pw = sc.next();
				for (int i = 0; i < pw.length(); i++) {
					en_pw += (char)(pw.charAt(i) * 3);
				}

				System.out.println("전화번호를 입력하세요! ");
				phonNumber = sc.next();

				userList.add(new User(name, id, pw, phonNumber));

				System.out.println(userList);

			}else if(choice == 3 ){
				// 비밀번호 찾기
				System.out.println("비밀번호를 찾습니다. ");
				System.out.println("확인을 위한 이름을 입력해주세요");
				name = sc.next();
				System.out.println("확인을 위한 전봐 번호를 입력해주세요");
				phonNumber = sc.next();
				
				// 이름과 비밀번호를 찾는 로직구현 

				if(UserField.pwFind(name, phonNumber, userList) == -1) {
					System.out.println("없는 고객정보 입니다.");
				}else {
					System.out.println("정보를 찾았습니다!");
					
					String findPw = userList.get(UserField.pwFind(name, phonNumber, userList)).getPhonNumber();
					System.out.println("비밀번호 확인: "+findPw);
					
					
					
					String api_key = "*"; // 자신의API 키 
					String api_secret = "*"; // API SECRET KEY 
					Message coolsms = new Message(api_key, api_secret);

					// 4 params(to, from, type, text) are mandatory. must be filled
					HashMap<String, String> params = new HashMap<String, String>();
					params.put("to", userList.get(UserField.pwFind(name, phonNumber, userList)).getPhonNumber());
//					params.put("to", "*");
					params.put("from", "*");
					params.put("type", "SMS");
					params.put("text", "비밀번호 확인: "+findPw);
					params.put("app_version", "test app 2.2"); // application name and version
					System.out.println("비밀번호 전송 성공!");
					try {
						JSONObject obj = (JSONObject) coolsms.send(params);
						System.out.println(obj.toString());
					} catch (CoolsmsException e) {
						System.out.println(e.getMessage());
						System.out.println(e.getCode());
					}
					
				}
				
			}else if(choice ==4){
				System.out.println(" 프로그램을 종료합니다");
				break;
			}else {
				
				System.out.println("잘못된 입력입니다 !");
			}

		}




	}
	// 아이디 중복검사
	// 회원가입
	// 로그인 
	// 암호화
	// 복호화 
}
