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

	// 객체를 만들어서 메소드를 사용허고 싶지 않아서 static 선언 
	
	static public String decrypt(String pw) {
		String de_pw ="";
	      for (int i = 0; i < pw.length(); i++) {
		         de_pw += (char)(pw.charAt(i) / 3);
		      }
		      
		      return de_pw;
		   }
	
	
	// 로그인메소드
	static public boolean login(String id, String pw,ArrayList<User> userList) { 
		for (int i = 0; i < userList.size(); i++) { // userList 길이만큼 반복
			if(userList.get(i).getId().equals(id) && userList.get(i).getPw().equals(UserField.encrypt(pw)) ) {
				// userList 길이만큼 반복하면서 get() 메소드를 통해 i번째 주소의 접근 -> private되어 있는 id를 매개변수로 받아온 id와 equals()로 비교한다
				//  userList 길이만큼 반복하면서 get() 메소드를 통해 i번째 주소의 접근 -> private되어 있는 pw를 매개변수로 받아온 pw와 equals()로 비교한다
				return true; // &&연산자를 통해서 두가지 조건 모두 참일 경우 true를 리턴
			}

		}
		// 위에서 조건물을 통해 return을 만나지 못했다면 매개변수는 없는 값이므로 false를 return한다.  
		
		return false;
	}
	
	// 회원가입 메소드 
	
	static public String encrypt(String pw) {
		// 암호화 알고리즘 
		String en_pw  ="";
		for (int i = 0; i < pw.length(); i++) {
			en_pw += (char)(pw.charAt(i) * 3);
		}
		return en_pw ;
		
	}

	static public int pwFind(String name, String phonNumber,ArrayList<User> userList ) {
		
		for (int i = 0; i < userList.size(); i++) { // userList 길이만큼 반복
			if(userList.get(i).getName().equals(name) && userList.get(i).getPhonNumber().equals(phonNumber) ) {
				// userList 길이만큼 반복하면서 get() 메소드를 통해 i번째 주소의 접근 -> private되어 있는 name을 매개변수로 받아온 name와 equals()로 비교한다
				//  userList 길이만큼 반복하면서 get() 메소드를 통해 i번째 주소의 접근 -> private되어 있는 phonNumber를 매개변수로 받아온 phonNumber와 equals()로 비교한다				
				
				return i;
				// 일치하는 이름과 전화번호가 있다면 인덱스번호를 리턴 
			}
		}
		return -1;
		//위의 조건물을 통하지 못했다면 없는 정보이므로 -1을 반환하고 사용하는 필드에서 조건물을 통해서 -1인지 (없는정보인지)부터를 판단하게 한다. 
		
	}
	
	static public boolean checkId(String id,ArrayList<User> userList) {
		for (int i = 0; i < userList.size(); i++) {  // userList 길이만큼 반복
			if(userList.get(i).getId().equals(id)) {
				// userList 길이만큼 반복하면서 get() 메소드를 통해 i번째 주소의 접근 -> private되어 있는 id을 매개변수로 받아온 id와 equals()로 비교한다
				
				return false; // 중복검사 이므로 사용하는 부분에서 if문을 통해 아니라면~ 으로 작성하기 위해서 중복되는 경우 false를 리턴
			}
		}
		return true; // 위의 조건문을 통해 return false를 하지 못하면 이곳으로 와서 return true 를 해준다.  
					// 중복값이 없는 경우 로 사용하는 부분에서 if문을 통해 중복하는 겂이 없다면~ 으로 구작성하기 위해서 true를 return
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
				pw = sc.next();
				// 입력값을 받음
				
				// if문으로 login()를 통해서 userList주소값을 넘겨준후 정보가 있는지 확인한후 그에 따른 출력문 실행
				if (UserField.login(id, pw, userList)) {
					System.out.println("로그인 성공");
				}else {
					System.out.println("로그인 실패");
				}






			}else if(choice == 2) {
				// 회원가입




				System.out.println("이름을 입력하세요!");
				name = sc.next();
					// 입력값을 받음

				// 중복확인을 통해서 중복이 되지 않는 id를 입력할때까지 반복시키기 위해서 무한 반복
				while(true) {
					System.out.println("사용하실 아이디를 입력하세요!");
					id = sc.next();
					// if문으로 checkId()메소드를 통해 userList주소 값에 접근하여 id중복 결과를 확인하고 그에 따른 결과 실행 
					if(UserField.checkId(id, userList)) {
						// 중복하는 값이 없다면 true를 리턴 하는 메소드 이므로 메소드의 결과가 true라면 무한반복 탈출 
						break;
					}else {
						System.out.println("이미 존재하는 ID입니다 다시 입력해주세요!");
						// 위의 조건문이 false라면 중복값이 존재한다는 것으로 다시 입력받게 한다. 
					}
				}

				System.out.println("비밀번호를 입력하세요! ");
				pw = sc.next();
				

				System.out.println("전화번호를 입력하세요! ");
				phonNumber = sc.next();
				
				// 메소드로 하지않고 바로 userList에 추가한다. (User 클래스에 기본생성자에 매개변수값을 지정받아 받아오게 한다. )
				userList.add(new User(name, id, UserField.encrypt(pw), phonNumber));

				System.out.println(userList);

			}else if(choice == 3 ){
				// 비밀번호 찾기
				System.out.println("비밀번호를 찾습니다. ");
				System.out.println("확인을 위한 이름을 입력해주세요");
				name = sc.next();
				System.out.println("확인을 위한 전화 번호를 입력해주세요");
				phonNumber = sc.next();
				//입력 값을 받음
				
				// 이름과 비밀번호를 찾는 로직구현 
				
				// pwFind()메소드는 정보가 없을경우 -1을 리턴하게 하였음으로 먼저 검사한다.
				if(UserField.pwFind(name, phonNumber, userList) == -1) {
					System.out.println("없는 고객정보 입니다.");
				}else {
					// 위의 결과가 아니라면 정보가 있다는 것으로  반복문을 통해 받아온 인덱스(방번호) 값을 return받는다.   
					System.out.println("정보를 찾았습니다!");
					
					// findPw라는 변수를 생성하여 pwFind인덱스 번호를 return받은 후 주소로 접근하여 private로 되어있는 PhonNumber를 getPw()메소드로 받아온다 
					String findPw = userList.get(UserField.pwFind(name, phonNumber, userList)).getPw();
					System.out.println("비밀번호 확인: "+findPw);
					
					
					
					String api_key = "NCSTFZGSGACJE9SI"; // 자신의API 키 
					String api_secret = "WW3ZOL6NAB2G0XATZRY0OFNXJDZBRAMF"; // API SECRET KEY 
					Message coolsms = new Message(api_key, api_secret);

					// 4 params(to, from, type, text) are mandatory. must be filled
					HashMap<String, String> params = new HashMap<String, String>();
					params.put("to", userList.get(UserField.pwFind(name, phonNumber, userList)).getPhonNumber());
					params.put("from", "01037325638");
					params.put("type", "SMS");
					params.put("text", "비밀번호 확인: "+UserField.decrypt(findPw));
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
				// 나가기
				System.out.println(" 프로그램을 종료합니다");
				break;
			}else {
				
				System.out.println("잘못된 입력입니다 !");
			}

		}




	}

}
