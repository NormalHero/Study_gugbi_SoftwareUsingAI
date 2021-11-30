package day03;

import java.util.Scanner;

public class Oper4 {
	public static void main(String[] args) {
		// 사용자에게 키를 입력받고 정수라면정수로 출력,
		// 실수라면 실수로 출력.
		String format = null;
		double height = 0.0;
		char newLine = '\n';
		boolean check = false;
		Scanner sc=  new Scanner(System.in);
		System.out.println("키를 입력하세요");
		height = sc.nextDouble();
		
		check = height - (int)height == 0;
		format = check ? "%.0fcm%c" : "%.2fcm%c";
		
			System.out.printf(format,check ? (int)height : height ,newLine);
		
	}
}
