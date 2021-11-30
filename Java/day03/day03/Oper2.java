package day03;

import java.util.Scanner;

public class Oper2 {
		public static void main(String[] args) {
			// 두 정수 입력받고 대소비교 
			int num1 = 0, num2 = 0  ;
			String result =null;
			Scanner sc = new Scanner(System.in);
			System.out.println(" 정수1를 입력하세요");
			num1 = sc.nextInt();
			System.out.println(" 정수2를 입력하세요");
			num2 = sc.nextInt();
			result = num1 > num2 ? "큰 값: "+num1 : num1 == num2 ? " 두 수가 같습니다." :"큰 값: "+ num2;
			System.out.println(result);

			
		}
}
