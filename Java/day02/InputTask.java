package day02;

import java.util.Scanner;

public class InputTask {
public static void main(String[] args) {
	
	
	// 두 정수를 입력한 후 덧셈 결과 출력
	// 단 next()만 사용
	
	Scanner sc = new Scanner(System.in);
	int num1 = 0;
	int num2 = 0;
	int sum = 0;
	
	
	System.out.println("정수1를 입력하세요! : ");
	num1 = Integer.parseInt(sc.next());
	System.out.println("정수2를 입력하세요! : ");
	num2 = Integer.parseInt(sc.next());
	sum = num1 + num2;
	System.out.println("두 정수의 합은 : \"" + sum + "\" 입니다");
}
}
