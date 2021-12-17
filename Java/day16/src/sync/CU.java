package sync;

public class CU {
	public static void main(String[] args) {
		ATM atm = new ATM();// 자원을 만든다. 쓰레드가 접근하는 쪽이 자원 -> run()
		
		Thread mom = new Thread(atm,"엄마");
		Thread son = new Thread(atm,"아들");
		
		mom.start();
		son.start();
	}
}
