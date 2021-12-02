package day06;

import java.util.Random;
import java.util.Scanner;

class CelebAnimalGame{

	/*	유아용 게임, 모여라 셀럽동물(게임)
	- 육식동물 금지

	이름, 나이, 먹이, 먹이개수, 생명

	1. 먹기
	    먹이가 있다면,
	    먹이 1 사용, 생명 1회복

	2. 자기(한동석 강사) --> sleep()
	    3초동안 생명 1회복

	3. 산책
	    생명 1 감소
	    랜덤한 퀴즈를 출력하고 정답을 맞추면 먹이 2개 획득
	    오답일 시 생명 1 감소
	    생명이 0일 시 강제로 잠들기

	4. 작별 인사하기
	 */



	String name;
	int age;
	boolean food = true;
	int foodCnt;
	int life = 5;

	public CelebAnimalGame(String name, int age,  int foodCnt, int life) {

		this.name = name;
		this.age = age;
		this.foodCnt = foodCnt;
		this.life = life;
	}
	public CelebAnimalGame(String name, int age,  int foodCnt ) {

		this.name = name;
		this.age = age;
		this.foodCnt = foodCnt;

	}
	public CelebAnimalGame(String name, int age) {

		this.name = name;
		this.age = age;


	}

	public CelebAnimalGame(String name) {

		this.name = name;


	}
	public CelebAnimalGame() {

	}


	void eat() {
		//	    먹이가 있다면,
		//	    먹이 1 사용, 생명 1회복
		--foodCnt;
		++life;


	}

	void sleep() {
		//		2. 자기(한동석 강사) --> sleep()
		//	    3초동안 생명 1회복
		
		++life;
//		try {
//			Thread.sleep(1000);
//			System.out.println(name+"잠을 자는중.");
//			Thread.sleep(1000);
//			System.out.println(name+"잠을  자는중..");
//			Thread.sleep(1000);
//			System.out.println(name+"잠을  자는중...");
//			++life;
//			System.out.println("잠을 자서 체력을 1 회복하였습니다 !");
//		} catch (InterruptedException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		
		

	}

	void walk() {

		//		3. 산책
		//		    생명 1 감소
		//		    랜덤한 퀴즈를 출력하고 정답을 맞추면 먹이 2개 획득
		//		    오답일 시 생명 1 감소
		//		    생명이 0일 시 강제로 잠들기
		--life;




	}

	void stat() {
		System.out.println("==================== 현재상태 =========================");
		System.out.println(name+"이의 현재 상태입니다 \n 나이: "+age+" \n먹이개수: " + foodCnt +" \n 생명력: "+life);
		System.out.println("====================================================");
	}






}


public class ClassTask {

	public static void main(String[] args) {

		/*	유아용 게임, 모여라 셀럽동물(게임)
			- 육식동물 금지

			이름, 나이, 먹이, 먹이개수, 생명

			1. 먹기
			    먹이가 있다면,
			    먹이 1 사용, 생명 1회복

			2. 자기(한동석 강사) --> sleep()
			    3초동안 생명 1회복

			3. 산책
			    생명 1 감소
			    랜덤한 퀴즈를 출력하고 정답을 맞추면 먹이 2개 획득
			    오답일 시 생명 1 감소
			    생명이 0일 시 강제로 잠들기

			4. 작별 인사하기
		 */




		String name = null;
		int age = 0;
		String food = null;
		int foodCnt = 0;
		int life = 0 ;
		CelebAnimalGame game = null;
		String choiceMsg = null;
		int choice = 0 ;
		String anotherNumMsg = "올바르지 못한 선택입니다 다시 골라주세요!";
		String welcomMsg ="☆★☆★어서오세요 모여라 셀럽동물게임 입니다 !☆★☆★";
		choiceMsg ="1. 먹기  \n2. 잠 자기 \n3. 산책 \n4. 작별 인사하기";

		Scanner sc = new Scanner(System.in);
		System.out.println(welcomMsg);
		//		while(true) {
		//			
		//		
		//		 System.out.println("이름를 입력하세요!");
		//		 name = sc.nextLine();
		//		 System.out.println("나이를 입력하세요!");
		//		 age = sc.nextInt();
		//		 System.out.println("먹이 개수를 입력하세요!");
		//		 foodCnt = sc.nextInt();
		//		 System.out.println("."+name+".");
		//		 	if (name == null || name == "") {
		//		 		System.out.println("올바르지 못한 입력값입니다 ! 다시 시도해주세요! ");
		//		 		System.out.println("공백을 사용하거나 0보다작은 수를 입력할 수 없습니다 !");
		//		 		
		//				continue;
		//			}
		//		 break;
		//		} nextLine 유효성 검사 실패 



		System.out.println("이름를 입력하세요!");
		name = sc.nextLine();
		System.out.println("나이를 입력하세요!");
		age = sc.nextInt();
		System.out.println("먹이 개수를 입력하세요!");
		foodCnt = sc.nextInt();
		System.out.println("."+name+".");
	


			game =  new CelebAnimalGame(name,age,foodCnt);
			game.stat();

			while (true) {


				if(game.foodCnt <=0) {
					System.out.println(game.name+"이의 먹이가 없습니다..");
					++game.foodCnt ;
					System.out.println(game.name+"이 먹이를 1개 지원합니다!");
				}



				System.out.println(choiceMsg);
				choice = sc.nextInt();

				if(choice == 1) {

					// 1. 먹기
					//			    먹이가 있다면,
					//			    먹이 1 사용, 생명 1회복
					if(game.food) {
						System.out.println(game.name+"이가 먹이를 먹습니다!");
						game.eat();
						System.out.println(game.name+"이가 먹이를 먹었습니다 ! 먹이를 1개 사용합니다 ...체력 1를 회복합니다");

					}
					//				else {System.out.println("먹이가 없습니다 ..");game.food=false; } // 유아들을 위해 계속해서 먹이를 1개 지원하여 음수가되지않게 유지

					game.stat();
				}else if(choice == 2) {
					// 2. 자기


//					game.sleep();

					try {
						Thread.sleep(1000);
						System.out.println(game.name+"잠을 자는중.");
						Thread.sleep(1000);
						System.out.println(game.name+"잠을  자는중..");
						Thread.sleep(1000);
						System.out.println(game.name+"잠을  자는중...");
						game.sleep();
						System.out.println("잠을 자서 체력을 회복하였습니다 !");
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}




					if(game.life <=0) {
						System.out.println(game.name+"이가 아픕니다.. 병원으로 가서 치료합니다");
						game.life +=1;
						System.out.println(game.name+"이를 치료하여 체력을 1 회복합니다!");
					}
					game.stat();





				}else if(choice == 3) {

					// 3. 산책


					//		    생명 1 감소
					//		    랜덤한 퀴즈를 출력하고 정답을 맞추면 먹이 2개 획득
					//		    오답일 시 생명 1 감소
					//		    생명이 0일 시 강제로 잠들기
					Random random = new Random();
					game.walk();
					System.out.println(" 산책을 나갑니다! ");
					System.out.println(" 산책 퀴즈 !!");
					int num1 = random.nextInt(100)+1;
					int num2 = random.nextInt(100)+1;
					System.out.println(num1+" + "+num2+" = ");
					int answer = sc.nextInt();
					int sum =num1 + num2;
					if(sum == answer) {
						System.out.println("정답을 맞췄습니다 ! 정답은 : "+answer);
						System.out.println("보상으로 먹이 2개를 획득!!");
						game.foodCnt +=2;
					}else {
						System.out.println("오답입니다 ... 정답은 : "+answer);
						System.out.println("라이프를  1차감합니다");
						game.life -= 1;
					}

					if(game.life <=0) {
						try {
						Thread.sleep(1000);
						System.out.println(name+"잠을 자는중.");
						Thread.sleep(1000);
						System.out.println(name+"잠을  자는중..");
						Thread.sleep(1000);
						System.out.println(name+"잠을  자는중...");
						game.sleep();
						System.out.println("잠을 자서 체력을 1 회복하였습니다 !");
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
//						System.out.println(game.name+"이가 아픕니다.. 병원으로 가서 치료합니다");
//						game.life =1;
//						System.out.println(game.name+"이를 치료하여 체력이 1로 회복합니다!");
					}
					game.stat();

				}else if(choice == 4 ) {
					// 4. 작별 인사하기
					System.out.println("게임을 종료합니다. 안녕히 가세요 !");
					break;



				}else {
					System.out.println(anotherNumMsg);
				}

				System.out.println();
			}


























		}

	}

