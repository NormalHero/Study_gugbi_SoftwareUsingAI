package day03;

public class ForTest {
	public static void main(String[] args) {
		
		// 이름 10번 출력
		
		for(int i = 0; i<10; i = i + 1) {
			System.out.println(i +1+ ". 박민수");
		}
		System.out.println("-------------------");
		
		// 이름 10번 출력, 10 ~ 1 까지 출력
		for(int i = 9; i>=0; i = i - 1) {
			System.out.println(i +1+ ". 박민수");
		}
		System.out.println("-------------------");
		
		// 이름 10번 출력, 10 ~ 20
		for(int i = 9; i<20; i = i + 1) {
			System.out.println(i +1+ ". 박민수");
		}
		System.out.println("-------------------");
		
		// -10번 반복
		for(int i = 0; i>-10; i = i - 1) {
			System.out.println(i - 1 + ". 박민수");
		}
		System.out.println("-------------------");
		
		
	
		// -11번반복
		for(int i = 0; i>=-10; i = i - 1) {
			System.out.println(i - 1+ ". 박민수");
		}
		System.out.println("-------------------");
		
	}
}
