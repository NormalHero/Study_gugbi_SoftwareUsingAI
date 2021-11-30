package day03;

import java.util.Scanner;

public class SwitchTest {

	public static void main(String[] args) {


		Scanner sc = new Scanner(System.in);
		int ans = 0;
		String resultMsg = null;
		String red = "불같고 열정적이며 적극적이다. ";
		String yel = "발랄하고 밝고 귀엽고 개성있고 유하다.";
		String bla = "묵묵하고 든든하고 냉청하고 멋지다 그리고 강하다.";
		String whi = "천사샅고 깔끔하고 정리를 좋아하고 배려심이 많다 ";
		String errorMsg = "잘못된 값을 입력하셨습니다.";

		System.out.println("좋아하는 색상을 고르세요 \n1. 빨간색 \n2. 노란색 \n3. 검은색 \n4. 흰색");
		ans = sc.nextInt();

		
		switch (ans) {
		case 1:
			resultMsg = red;
			break;
		case 2:
			resultMsg = yel;
			break;
		case 3:
			resultMsg = bla;
			break;
		case 4: 
			resultMsg = whi;
			break;
			
			

		default:
			resultMsg = errorMsg;
		}
		System.out.println(resultMsg);
		
		
		
		

	



	}

}
