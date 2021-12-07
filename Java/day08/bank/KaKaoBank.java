package bank;

public class KaKaoBank extends Bank {
	// - 1번 은행 : 잔액 조회 시재산 반토막

	int nowMaxUser = 0;
	
	public KaKaoBank(String accountHolder, String accountNumber, String phoneNumber, String password) {
		this.accountHolder = accountHolder;
		this.accountNumber = accountNumber;
		this.phoneNumber = phoneNumber;
		this.passWord = password;
		nowMaxUser++;
	}



	public KaKaoBank() {
		// TODO Auto-generated constructor stub
	}



	static int nowMaxIndex;
	int checkBalance() {
		
		System.out.println("잔액 조회 수수료가 발생하였습니다. 수수료 : "+(totalMoney /2));
		totalMoney = totalMoney /2 ;
		return totalMoney;
	}
	
	void ck () {
		System.out.println("카카오");
	}
}
