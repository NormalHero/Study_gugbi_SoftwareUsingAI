package day02;

import java.util.Scanner;

public class InputTask2 {
	public static void main(String[] args) {
		
		
		// 3개의 정수를 한 번에 입력 받은후 
		// 3개의 정수의 합 출력
		
		Scanner sc = new Scanner(System.in);
		int num1, num2, num3, sum;
		String msg = "정수 3개를 입력하세요(띄어쓰기로 구분해주세요) : ";
		System.out.println(msg);
		num1 = Integer.parseInt(sc.next());
		num2 = Integer.parseInt(sc.next());
		num3 = Integer.parseInt(sc.next());
		sum = num1 + num2 + num3;
		
		
		
		 
		 
		 
		 
		System.out.println("세 정수의 합은 \""+sum+"\"입니다.");
	}    
}
