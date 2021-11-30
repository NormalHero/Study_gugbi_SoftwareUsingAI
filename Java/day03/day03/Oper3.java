package day03;

import java.util.Scanner;

public class Oper3 {
	public static void main(String[] args) {
		
	/*	심리 테스트
		
		당신이 좋아하는 색을 선ㅌㄱ하세요.
		1. 빨간색
		2. 노란색
		3. 검은색
		4. 흰색
		
		빨간색 : 뷸같고 열정적이며 적극적이다. 
		노란색 : 불랄하고 밝고 귀엽고 개성있고 유하다.
		검은색 : 묵묵하고 든든하고 냉청하고 멋지다 그리고 강하다.
		흰색    : 천사샅고 깔끔하고 정리를 좋아하고 배려심이 많다 
		
		*/
		
		Scanner sc = new Scanner(System.in);
		int ans = 0;
		String resultMsg = null;
		String red = "불같고 열정적이며 적극적이다. ";
		String yel = "발랄하고 밝고 귀엽고 개성있고 유하다.";
		String bla = "묵묵하고 든든하고 냉청하고 멋지다 그리고 강하다.";
		String whi = "천사샅고 깔끔하고 정리를 좋아하고 배려심이 많다 ";
		
		
		System.out.println("좋아하는 색상을 고르세요 \n1. 빨간색 \n2. 노란색 \n3. 검은색 \n4. 흰색");
		ans = sc.nextInt();
		
		resultMsg = 
				ans == 1 ? "빨간색: "+red : 
					ans == 2 ? "노란색 : "+yel :
						ans == 3 ? "검은색: "+bla : 
							ans == 4 ? "흰색: "+whi :
					"올바른 값을 입력하세요";
			
			System.out.println(resultMsg);
		
		
	}
}
