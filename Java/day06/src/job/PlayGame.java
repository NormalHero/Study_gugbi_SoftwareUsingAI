package job;

public class PlayGame {
	
	String action;
	int pay;
	int hp;
	boolean best11;
	public PlayGame(String action, int pay) {
		this.action = action;
		this.pay = pay;
	}
	public PlayGame(String action,int pay,int hp) {
		this.action = action;
		this.pay = pay;
		this.hp= hp;
		
	}
	public PlayGame(String action,int pay,int hp, boolean best11) {
		this.action = action;
		this.pay = pay;
		this.hp= hp;
		this.best11 = best11;
		
	}
	

	
	
}
