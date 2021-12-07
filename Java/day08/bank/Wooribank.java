package bank;

public class Wooribank extends Bank {
	// - 3 번 은행 : 이급시 수수료 50%  - > 1000원 입금시 500원 입금 
	
	int nowMaxUser = 0;
	
	public Wooribank(String accountHolder, String accountNumber, String phoneNumber, String password) {
		this.accountHolder = accountHolder;
		this.accountNumber = accountNumber;
		this.phoneNumber = phoneNumber;
		this.passWord = password;
		nowMaxUser++;
	}
	public Wooribank() {
		// TODO Auto-generated constructor stub
	}
	//입금하기
	void deposit( int money) {
		double charge = money/2;
		System.out.println("입금 수수료가 발생하였습니다  . 수수료 : "+charge);
		totalMoney += money/2;
		
		history += historycount+++". "+" 거래 분류-입금) 예금주: "+accountHolder+" 입금액: "+money+" 거래 수수료:"+charge+" 거래 후 잔액 : "+totalMoney+"\n";

		
		
	}
	void ck () {
		System.out.println("우리");
	}
}
