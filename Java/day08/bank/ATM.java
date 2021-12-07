package bank;

import java.util.Random;
import java.util.Scanner;

public class ATM {
	
	
	
	
	public static void main(String[] args) {
		Random random = new Random();
		Scanner sc = new Scanner(System.in);
//		Bank bank = new Bank();
		Bank bank = null ;
		
		
		
		
		
	KaKaoBank kakao = new KaKaoBank();
	ShinhanBank shinhanBank = new ShinhanBank();
	Wooribank wooribank = new Wooribank();
		
		
		boolean finish = false; 	// 무한루프 탈출시 사용할 변수
		int bankChoice ; 			//  은행 선택에 대한 사용자 입력값
		int menuChoice ;			// 메뉴 선택에 대한 사용자 입력값 
		String[] choiceBankInfo = {"카카오뱅크","신한은행","우리은행"};
		
		String phoneNumber = null;
		String accountHolder;
		String[] accountMake = new String[6];
		String accountNumber =null;
		String passWord;
		String loginAccountNum;
		String loginPassword;
		int loginIndex = 0;
		int money;
		
		while(true) {
			System.out.println("◀ 은행 종합관리 시스템입니다 ▶");
			System.out.println("###   은행을 선택하세요   ###");
			System.out.println("1. 카카오뱅크 \n2. 신한은행 \n3. 우리은행 \n4. 종료하기");
			bankChoice= sc.nextInt(); // 입력값을 저장 
			// 4번 종료하기 선택시 break;로 종료
			if (bankChoice == 4) {
				System.out.println("안녕히 가세요!");
				break;
			}
			System.out.println("선택하신 은행: "+choiceBankInfo[bankChoice-1]);
			System.out.println();
			
			
			
			
			 if(bankChoice == 1) {
			
				bank = kakao;
//				bank.ck();
				
//				KaKaoBank kakao = (KaKaoBank)bank.bankUser[bankChoice-1][KaKaoBank.nowMaxIndex]; // 1번은행 클래스 메모리 할당
				
			
			}else if(bankChoice == 2) {
				
				bank = shinhanBank;
//				bank.ck();
				
				
			}else if(bankChoice == 3) {
				
				bank = wooribank;
//				bank.ck();
			}
			
			
			
			while(true) {
				System.out.println("1. 계좌 개설 \n2. 입금하기 \n3. 출금하기\n4. 잔액조회\n5. 계좌번호 찾기 \n6. 계좌내역 \n7. 돌아가기");
				System.out.println();
				menuChoice = sc.nextInt();
				
				if(menuChoice == 1 ) { //1. 계좌 개설
					boolean pnCk =true;
					sc.nextLine(); // 쓰레기값 처리

					System.out.println("계좌를 개설 합니다. ");
					System.out.println("예금주를 입력하세요!");
					accountHolder= sc.nextLine();
					
					while(pnCk) {
					System.out.println("전화번호를 입력하세요 . ");
					phoneNumber = sc.nextLine();
//					if(!bank.phoneNumberCheck(bankChoice-1, phoneNumber,bank.bankUser )) {
//							// 중복값을 찾아서 반복시킴 
//						System.out.println("이미 존재하는 전화번호 입니다.. 다시 입력해주세요");
//						}else {break;}
					
					
					for (int i = 0; i < bank.bankUser[bankChoice-1].length; i++) {	
						
						if(bank.bankUser[bankChoice-1][i] == null) {
							System.out.println("사용 가능한 전화번호 입니다 !");
							pnCk = false;
							break;
						}else if(!bank.bankUser[bankChoice-1][i].phoneNumberCheck(bankChoice-1,phoneNumber, bank.bankUser )) {
									//이미 있는 번호라면 false가 넘어옴
									System.out.println("이미 존재하는 번호입니다 ! 다시 입력해주세요!");
							
							break;
						}else {
							pnCk = false;
							break;
						}
					} // 수정
					
					
					
					
					
					
					}
					
					System.out.println("사용할 비밀번호를 입력하세요!");
					passWord = sc.nextLine();
					
					while(true) {
						accountNumber ="";
					for (int i = 0; i < 6; i++) {
						accountNumber += random.nextInt(9)+"";
					 }
					if(bank.accountNumberCheck(bankChoice-1, accountNumber)) {break;} // 중복값 검사후 중복값이 없다면 break로 반복문 탈출
					}
					
					// 뱅크 배열에 새로운 뱅크 값을 저장한다. 
//					System.out.println(bank.nowMaxUser);
//					bank.bankUser[bankChoice-1][bank.nowMaxUser] = new Bank(accountHolder,accountNumber,phoneNumber,passWord);
					
					if(bankChoice == 1) {
						bank.bankUser[bankChoice-1][bank.nowMaxUser] = new KaKaoBank(accountHolder,accountNumber,phoneNumber,passWord);

					}else if(bankChoice == 2) {
						bank.bankUser[bankChoice-1][bank.nowMaxUser] = new ShinhanBank(accountHolder,accountNumber,phoneNumber,passWord);

					}else if(bankChoice == 3) {
						bank.bankUser[bankChoice-1][bank.nowMaxUser] = new Wooribank(accountHolder,accountNumber,phoneNumber,passWord);

					}
					
					
					
					
					
					
					
					
					
//					System.out.println(bank.bankUser[bankChoice-1][bank.nowMaxUser].accountHolder);
					System.out.println(bank.bankUser[bankChoice-1][bank.nowMaxUser].accountHolder+"님 계좌번호 발급|"+bank.bankUser[bankChoice-1][bank.nowMaxUser].accountNumber);
					System.out.println();
				}else if(menuChoice == 2) { //2. 입금하기 

					sc.nextLine();
					System.out.println("입금을 하기위해 로그인 해주세요.");
					System.out.println("계좌번호를 입력하세요 : ");
					loginAccountNum = sc.nextLine();
					System.out.println("비밀번호를 입력하세요: ");
					loginPassword = sc.nextLine();
//					System.out.println(bank.bankUser[0][0].accountHolder);
					
					
					if( bank.login(bankChoice-1, loginAccountNum, loginPassword, loginIndex,bank.bankUser)) {
						System.out.println("얼마를 입금 하시겠습니까??");
						money = sc.nextInt();
						for (int i = 0; i < bank.bankUser[bankChoice-1].length; i++) {						
							if(bank.bankUser[bankChoice-1][i].accountNumber.equals(loginAccountNum)) {
								
						
								bank.bankUser[bankChoice-1][i].deposit(money);
								System.out.println(bank.bankUser[bankChoice-1][i].accountHolder+"님의 잔액 :"+bank.bankUser[bankChoice-1][i].totalMoney);
								
								break;
							}
						}
					};
					
					
					
				}else if(menuChoice == 3) { // 3. 출금하기
					
					sc.nextLine();
					System.out.println("출금을 하기위해 로그인 해주세요.");
					System.out.println("계좌번호를 입력하세요 : ");
					loginAccountNum = sc.nextLine();
					System.out.println("비밀번호를 입력하세요: ");
					loginPassword = sc.nextLine();
					
					
					if( bank.login(bankChoice-1, loginAccountNum, loginPassword, loginIndex,bank.bankUser)) {
						System.out.println("얼마를 출금 하시겠습니까??");
						money = sc.nextInt();
						for (int i = 0; i < bank.bankUser[bankChoice-1].length; i++) {						
							if(bank.bankUser[bankChoice-1][i].accountNumber.equals(loginAccountNum)) {
								bank.bankUser[bankChoice-1][i].withdraw(money);
								System.out.println(bank.bankUser[bankChoice-1][i].accountHolder+"님의 잔액 :"+bank.bankUser[bankChoice-1][i].totalMoney);
								
								break;
							}
						}
					};
					
					
				}else if(menuChoice == 4) { // 4. 잔액조회
					
					sc.nextLine();
					System.out.println("잔액 조회를 하기위해 로그인 해주세요.");
					System.out.println("계좌번호를 입력하세요 : ");
					loginAccountNum = sc.nextLine();
					System.out.println("비밀번호를 입력하세요: ");
					loginPassword = sc.nextLine();
					
					
					if( bank.login(bankChoice-1, loginAccountNum, loginPassword, loginIndex,bank.bankUser)) {

						for (int i = 0; i < bank.bankUser[bankChoice-1].length; i++) {						
							if(bank.bankUser[bankChoice-1][i].accountNumber.equals(loginAccountNum)) {
								System.out.println(bank.bankUser[bankChoice-1][i].checkBalance());
								
								System.out.println(bank.bankUser[bankChoice-1][i].accountHolder+"님의 잔액 :"+bank.bankUser[bankChoice-1][i].totalMoney);
								System.out.println();
								break;
							}
						}
					};
					
					
				}else if(menuChoice == 5) { // 5. 계좌번호 찾기
					
					
					sc.nextLine();
					System.out.println("계좌번호를 재설정합니다");
					System.out.println("전화번호를 입력하세요 : ");
					phoneNumber = sc.nextLine();
					System.out.println("비밀번호를 입력하세요: ");
					loginPassword = sc.nextLine();
					
					
				
					
						for (int i = 0; i < bank.bankUser[bankChoice-1].length; i++) {	
							

							if(bank.bankUser[bankChoice-1][i].passWord.equals(loginPassword)) {
								bank.bankUser[bankChoice-1][i].resetPw(bankChoice-1, loginPassword, phoneNumber, bank.bankUser);
								
								
								break;
							}
						}
					
					
					
					
				}else if(menuChoice == 6) { // 6. 계좌내역
					
					
					sc.nextLine();
					System.out.println("거래내역을 확인 하기위해 로그인 해주세요.");
					System.out.println("계좌번호를 입력하세요 : ");
					loginAccountNum = sc.nextLine();
					System.out.println("비밀번호를 입력하세요: ");
					loginPassword = sc.nextLine();
					
					
					if( bank.login(bankChoice-1, loginAccountNum, loginPassword, loginIndex,bank.bankUser)) {
						for (int i = 0; i < bank.bankUser[bankChoice-1].length; i++) {						
							if(bank.bankUser[bankChoice-1][i].accountNumber.equals(loginAccountNum)) {
								System.out.println(bank.bankUser[bankChoice-1][i].accountHolder+"님 " +bank.bankUser[bankChoice-1][i].history);
								
								break;
							}
						}
							}
						
					
					
					
					
					
				}else if(menuChoice == 7) {// 7. 돌아가기
					break;
				}else  { // 그외의 값 처리 
					System.out.println("잘못된 입력입니다. 다시 시도해주세요...");
				}
				
				
				
				
				
				break;
				
				
			}
			
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
