package day03;

import java.util.Scanner;

public class IfTask {
	public static void main(String[] args) {
		// 두 정수를 입력받고 대소비교
		String msg1 ="정수 두개를 입력하세요 : ";
		String msg2 ="더 큰 수: ";
		String msg3 ="두 수는 같습니다";
		String resultmsg = null;
		int num1 = 0, num2 = 0;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println(msg1);
		num1 = sc.nextInt();

		num2 = sc.nextInt();
		
		if(num1 > num2) {
			resultmsg = msg2+num1;
		}else if(num1 < num2) {
			resultmsg = msg2+num2;
		}else {
			resultmsg =msg3;
		}
		System.out.println(resultmsg);
	}
}
