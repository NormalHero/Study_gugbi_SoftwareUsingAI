package day04;

import java.util.Scanner;

public class ArTask2 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		//사용자에게 입력받은 문자열 중 소문자는 모두 대문자로, 대문자는 모두 소문자로 변경한다.
//		String msg = "문자열을 입력하세요";
//		char[] trans  = null;
//		System.out.println(msg);
//		String text = sc.nextLine();
//		trans = new char[text.length()];
//		
//		for (int i = 0; i < text.length(); i++) {
//			
//			trans[i] = text.charAt(i);
//			if(97<= trans[i]   && trans[i]<=122) {
//				trans[i] = (char)(text.charAt(i) - 32) ;
//			}else if(65<=trans[i] && trans[i]<=90){
//				trans[i] = (char)(text.charAt(i) + 32);
//			}
//			
//			System.out.println(trans[i]);
//		}
		
		
				
		
		
		// 정수를 한글로 변경
		// 입력 예: 1024
		// 출력 예 : 일공이사 
		
		int num = 0;
		String result ="";
		String hangel ="공일이삼사오육칠팔구";
		
		System.out.println("정수: ");
		num = sc.nextInt();
		
		while(num != 0) {
			result=hangel.charAt(num % 10) +result;
			num /= 10;
		
			
		
		}
		System.out.println(result);
		
		
	}
}
