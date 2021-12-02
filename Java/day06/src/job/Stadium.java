package job;

import java.util.Scanner;

public class Stadium {


	public static void main(String[] args) {

		SoccerPlayer[] scPlayers = new SoccerPlayer[4];

		scPlayers[0] = new SoccerPlayer("손흥민", 29, 10_000_000,8);
		scPlayers[1] = new SoccerPlayer("호날두", 37, 500_000_000,3);
		scPlayers[2] = new SoccerPlayer("손흥민", 34, 450_000_000,4);
		scPlayers[3] = new SoccerPlayer("정상빈", 19, 50_000,10);

		PlayGame[] pGame = {
				new PlayGame("레드 카드를 받았습니다..", -50_000,0),
				new PlayGame("득점에 성공하였습니다 ", 100_000,0),
				new PlayGame("어시스트를 했습니다", 50_000,0),
				new PlayGame("벤치를 뜨겁게 달굽니다", 10_000,0),
				new PlayGame("징계를 받았습니다.", -100_000,0),
				new PlayGame("부상을 당했습니다",0,-3),
				new PlayGame("●○●○최고의 활약을 펼쳤습니다.●○●○",1_000_000,0,true)

		};



		Scanner sc = new Scanner(System.in);
		int choicePlayer;
		int menuAns;
		boolean run = true;
		String menuMsg="1. 경기 시작하기 \n2. 휴식 하기 \n3. 치료하기 \n4. 내 선수의 클래스는?? \n5. 나가기";

		while (run) {
			System.out.println("★☆ 안녕하세요 선수키우기입니다 ! !☆★");;
			System.out.println("선수를 선택하세요!");
			System.out.println("0. 나가기");
			for (int i = 0; i < scPlayers.length; i++) {
				System.out.println(i+1+". "+scPlayers[i].name);
			}
			choicePlayer = sc. nextInt();

			while (run) {
				System.out.println(menuMsg);
				menuAns = sc.nextInt();
				
				SoccerPlayer scPlayer = scPlayers[choicePlayer-1];
				
				if(menuAns == 1) {
					// 경기 시작하기 
					
					System.out.println("경기를 시작합니다 !");
					
					PlayGame scP = scPlayer.playgame(pGame);
					System.out.println(scP.action);
					System.out.println(scPlayer.name+"의 급여 변경사항 : "+scP.pay+"");
					System.out.println(scPlayer.name+"의 체력 변경사항 : "+(scP.hp+1)+"");
					scPlayer.changeState(scP.pay,scP.hp);
					scPlayer.play();
					
					if(scPlayer.hp <= 0) {
						System.out.println("생명이 없습니다 은퇴합니다.");
						run=false;
						break;
					}else if(scPlayer.totalmoney < -100_000) {
						run=false;
						System.out.println("빛이 너무 많아 파산하였습니다.");
					}
					
					System.out.println("현재 상태를 확인합니다 ");
					
					System.out.println("선수 이름: "+scPlayer.name);
					System.out.println("총 자산: "+scPlayer.totalmoney);
					System.out.println("라이프: "+scPlayer.hp);
					
				}else if(menuAns == 2) {
					// 휴식하기
					scPlayer.rest();
					System.out.println(scPlayer.name+"이(가) 휴식에 들어갑니다..");
					System.out.println("선수 이름: "+scPlayer.name);
					System.out.println("총 자산: "+scPlayer.totalmoney);
					System.out.println("라이프: "+scPlayer.hp);
					
				}else if(menuAns == 3) {
					// 치료하기 
					System.out.println(scPlayer.name+"을(를)치료합니다. 치료 비용은 : "+scPlayer.careCost+"입니다.");
					scPlayer.care();
					if(scPlayer.totalmoney < -100_000) {
						run=false;
						System.out.println("빛이 너무 많아 파산하였습니다.");
					}
					System.out.println("선수 이름: "+scPlayer.name);
					System.out.println("총 자산: "+scPlayer.totalmoney);
					System.out.println("라이프: "+scPlayer.hp);
					
				}else if(menuAns == 4) {
					// 클래스 보기
					
					String playerClassMsg = scPlayer.classCk();
					System.out.println(playerClassMsg);
					

					
				}else if(menuAns == 5) {
					System.out.println("종료합니다!");
				break;
			}
				
			
				

			}


		}



	}


}
