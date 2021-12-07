package bank;

import java.util.Random;

public class Bank {

	// 고객의 정보를 담을 배열
	// 0 - 카카오  , 1 - 신한 ,  2- 우리
	Bank[][] bankUser = new Bank[3][100];
	String accountHolder ="";
	String accountNumber;
	String phoneNumber;
	String passWord;
	String history ="";
	int totalMoney;
	boolean isHaveAccount;
	int nowMaxUser = 0 ; 
	int historycount=1; 
	int charge = 0;


	public Bank() {}

	void ck () {
		System.out.println("부모");
	}


	public Bank(String accountHolder, String accountNumber, String phoneNumber, String password) {
		this.accountHolder = accountHolder;
		this.accountNumber = accountNumber;
		this.phoneNumber = phoneNumber;
		this.passWord = password;

	}


	// 계좌번호 중복 체크
	boolean accountNumberCheck(int bankIndex, String accountNumber ) {
		for (int i = 0; i < bankUser[bankIndex].length; i++) {
			if(bankUser[bankIndex][i] == null) {
				return true;
			}

			else if(bankUser[bankIndex][i].accountNumber == accountNumber) {
				return false; // 중복값을 찾았다면 false 리턴
			}
		}
		return true;  // 중복값이 없다면 true 리턴
	}




	// 전화번호 중복체크
	boolean phoneNumberCheck(int bankIndex, String phoneNumber, Bank[][] bank ) {
		for (int i = 0; i < bank[bankIndex].length; i++) {
//			if(bank[bankIndex][i] == null) {
//				System.out.println("1");
//				return true; // null이 나온다는것은 배열의 끝부분으로 검사를 종료한다.
//			}

			if(bank[bankIndex][i].phoneNumber.equals(phoneNumber)    ) {
				// 중복값이 이거나 널포인트가 아니라면
				return false; // 중복값을 찾았다면  false 리턴
			}else {
				return true;
				// 중복값이 없다면 트루를 리턴
			}
		}
		return true;  // 중복값이 없다면 true 리턴

	}

	// 로그인
	boolean login(int bankIndex,String accountNumber, String password, int loginIndex, Bank[][] bank ) {

		// System.out.println("계좌번호 확인차: "+bank[0][0].accountNumber);
		for (int i = 0; i < bank[bankIndex].length; i++) {
			
		if(bank[bankIndex][i] == null) {
			System.out.println("없는 계정입니다!");
			return false;
		}
			if(!bank[bankIndex][i].passWord.equals(password) ) { //일치 하지않으면 java.lang.NullPointerException에러가 발생


				System.out.println("비밀번호가 일치하지 않습니다 !");
				System.out.println();
				return false;
			}

			else if(bank[bankIndex][i].accountNumber == null) {
				System.out.println("없는 계좌번호 입니다.");
				return false;
			}else if(bank[bankIndex][i].accountNumber.equals(accountNumber)) {
				// 로그인시 돌려줄 인덱스 번호?
				loginIndex = i;
				System.out.println(bank[bankIndex][i].accountHolder+"님 로그인성공");
				return true; // 중복값을 찾았다면  true 리턴
			}
		}


		return false; // 중복값이 없다면 false 리턴
	}

	//입금하기
	void deposit( int money) {
		
		totalMoney += money;
		history += historycount+++". "+" 거래 분류-입금) 예금주: "+accountHolder+" 입금액: "+money+" 거래 수수료:"+charge+" 거래 후 잔액 : "+totalMoney+"\n";

	}

	// 출금하기
	void withdraw(int money) {
		if(totalMoney >0) {
			totalMoney -= money;
			history += historycount+++". "+" 거래 분류 출금) 예금주: "+accountHolder+" 입금액: "+money+" 거래 수수료:"+charge+" 거래 후 잔액 : "+totalMoney+"\n";
		}else {
			System.out.println("잔액이 부족합니다.");
		}
	}

	int checkBalance() {
		return totalMoney;
	}





	void resetPw(int bankIndex, String password,String phoneNumber , Bank[][] bank ) {
		Random random = new Random();
		// System.out.println("계좌번호 확인차: "+bank[0][0].accountNumber);
		for (int i = 0; i < bank[bankIndex].length; i++) {
			if(bank[bankIndex][i] == null) {
				System.out.println("없는 계정입니다!");
				break;
			}else if(bank[bankIndex][i].passWord.equals(password) && bank[bankIndex][i].phoneNumber.equals(phoneNumber)) {
				//


				while(true) {
					String accountNumber ="";
					for (int j = 0; j < 6; j++) {
						accountNumber += random.nextInt(9)+"";
					}
					if(bank[bankIndex][i].accountNumberCheck(bankIndex, accountNumber)) {
						bank[bankIndex][i].accountNumber =accountNumber;
						System.out.println("계좌번호 재발급 성공!");
						System.out.println("새로 발급된 계좌번호 :"+bank[bankIndex][i].accountNumber);
						break;
					} // 중복값 검사후 중복값이 없다면 break로 반복문 탈출
				}
				break;

			}
		}


	}
	





String history(int bankIndex,Bank[][] bank , String accountNumber) {
	 
	String result="";
	for (int i = 0; i < bank[bankIndex].length; i++) {

//		System.out.println(bank[bankIndex][i].accountNumber);
		
		if(String.valueOf(bank[bankIndex][i].accountNumber) ==null) {
			
			result = "없는 계좌번호 입니다.";
		}else if(bank[bankIndex][i].accountNumber.equals(accountNumber)) {
			

			result = bank[bankIndex][i].history; 
		}
		
	}
	return result;
	
}










}