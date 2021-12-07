package bank;

public class ShinhanBank extends Bank {
	// - 2 번 은행 : 출금 시 수수료 50% -> 수수료 때문에 부족하면 출금이 안될수있음
	int nowMaxUser = 0;
	
	public ShinhanBank(String accountHolder, String accountNumber, String phoneNumber, String password) {
		this.accountHolder = accountHolder;
		this.accountNumber = accountNumber;
		this.phoneNumber = phoneNumber;
		this.passWord = password;
		nowMaxUser++;
	}

	public ShinhanBank() {
		// TODO Auto-generated constructor stub
	}

	void withdraw(int money) {
		double charge = money * 0.5;
		System.out.println("수수료: "+charge);
		if( (totalMoney - (money + charge)) >= 0) {
			totalMoney -= money + charge;
			System.out.println(money + charge+"원 차감");
			
			history += historycount+++". "+" 거래 분류-입금) 예금주: "+accountHolder+" 입금액: "+money+" 거래 수수료:"+charge+" 거래 후 잔액 : "+totalMoney+"\n";

			// 수수로 처리?
		}else {
			System.out.println("잔액이 부족합니다.");
		}
	}
	
	void ck () {
		System.out.println("신한");
	}
}
