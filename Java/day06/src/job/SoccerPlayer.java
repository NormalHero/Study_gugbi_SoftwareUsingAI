package job;

import java.util.Random;

import day06.Quiz;


public class SoccerPlayer {
	String name;
	int age;
	int totalmoney ;
	int hp;
	final int careCost = -25_000;
	String nowClass;
	
	
	
	
	public SoccerPlayer(String name, int age, int totalmoney,int hp) {
		super();
		this.name = name;
		this.age = age;
		this.totalmoney = totalmoney;
		this.hp = hp;
	}

	void changeState(int money, int hp) {
		
		
		if(money >= 0) {
			
			totalmoney += money;
		}else {
			if(totalmoney<0) {
				totalmoney = totalmoney + money;
			}
			totalmoney = -money;
		}
		
		
			this.hp +=  hp;
	}
	
	String classCk() {
		if (totalmoney >= 450_000_000) {
			nowClass ="신계 선수입니다.";
		}else if(totalmoney >= 10_000_000) {
			nowClass="월드 클래스 선수입니다.";
		}else if(totalmoney >= 1_000_000) {
			nowClass="유명한 선수입니다.";
		}else if(totalmoney >= 100_000) {
			nowClass="꽤 알려진 선수입니다.";
		}else if(totalmoney < 30_000) {
			nowClass="파산 직전의 산수입니다.";
		}else {
			nowClass="성과가 더 필요한 선수입니다.";
		}
		return nowClass;
	}


	
	void rest() {
		hp++;
	}
	void play () {
		hp--;
	}
	void care() {
		totalmoney += careCost;
		hp  += 3;
	}
	

	PlayGame playgame(PlayGame[] playgame) {
		int[] arData = new int[10];
		int rating = 20;
		Random r = new Random();
		
		
		for (int i = 0; i < rating / 10; i++) {
			arData[i] = 1;
		}
			
	      if(arData[r.nextInt(10)] == 1) {
	          
	          for (int i = 0; i < playgame.length; i++) {
	             if(playgame[i].best11) {
	                return playgame[i];
	             }
	          }
	       }
		
	      
	  	PlayGame pg = null;
	      while(true) {
	    	  pg= playgame[r.nextInt(playgame.length)];
	         if(!pg.best11) { break; }
	      }
	      
		
		
		
	
		      
		
		   
	  
		return  pg;
		
	}
	
	
	
	
	
}
