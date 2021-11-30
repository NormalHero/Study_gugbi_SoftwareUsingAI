package day04;

import java.util.Scanner;

public class MethodTask {
	static int[] result = new int[2];
	// [0] 최대값 , [1] 최소값

	public static void main(String[] args) {


		MethodTask methodTask = new MethodTask();
		//		methodTask.task1();
		//		methodTask.task2(5);
		//		methodTask.task3(5,"박민수");
		//		
		//		System.out.println(methodTask.task4(10,5,3));
		//		;
		//		
		//		
		//		System.out.println(methodTask.task9("ababqwea",'a'));
		//		
		//		
		//		
		//	System.out.println(methodTask.task10(10));	
		int num =	methodTask.task11("구일이팔");
		System.out.println(num);
		//		int[] data = {5, 4, 10, 2, 1}; 



		methodTask.task12();
		System.out.println("최대 값: "+result[0]+" 최소 값: "+result[1]);
	}
	// 아이언
	// 1~10까지 println()으로 출력하는 메소드
	void task1() {
		for (int i = 0; i < 10; i++) {
			System.out.println(i+1);
		}
	}

	// "홍길동"을 n번 println()으로 출력하는 메소드

	void task2(int n) {
		for (int i = 0; i < n; i++) {
			String name ="홍길동";
			System.out.println("name");
		}
	}



	// 브론즈
	// 이름을 n번 println()으로 출력하는 메소드
	void task3(int n, String name) {
		for (int i = 0; i < n; i++) {

			System.out.println(name);
		}
	}

	// 세 정수의 뺄셈을 해주는 메소드
	double task4(int num1, int num2,int  num3) {
		double minus = num1 -  num2 - num3;
		return minus;
	}




	// 실버
	// 두 정수의 나눗셈을 해주는 메소드(몫과 나머지)
	int[] task5(int num1, int num2) {

		int[] result = null;
		if(num2 != 0) {
			result = new int[2];
			result[0] = num1/ num2;
			result[1] =  num1% num2;
		}
		return result;
	}

	// 1~n까지의 합을 구해주는 메소드

	int task6(int x) {
		int total= 0;
		for (int i = 0; i < x; i++) {
			total += i+1;
		}
		return total;
	}

	// 골드
	// 홀수를 짝수로, 짝수를 홀수로 바꿔주는 메소드
	int task7 (int x) {
		if(x % 2== 0) {
			x = x+1;
		}else if(x % 2 == 1) {
			x = x+1;
		}
		return x;
	}


	// 문자열을 입력받고 소문자는 대문자로, 대문자는 소문자로 바꿔주는 메소드
	void task8(String str) {


		char[] trans  = null;

		trans = new char[str.length()];

		for (int i = 0; i < str.length(); i++) {

			trans[i] = str.charAt(i);
			if(97<= trans[i]   && trans[i]<=122) {
				trans[i] = (char)(str.charAt(i) - 32) ;
			}else if(65<=trans[i] && trans[i]<=90){
				trans[i] = (char)(str.charAt(i) + 32);
			}

			System.out.println(trans[i]);
		}

	}

	// 플래티넘
	// 문자열을 입력받고 원하는 문자의 개수를 구해주는 메소드
	int task9(String str, char word) {
		int cnt = 0;
		char[] data = new char[str.length()];
		for (int i = 0; i < data.length; i++) {
			data[i] = str.charAt(i);
		}
		for (int i = 0; i < data.length; i++) {
			if(data[i] == word) {
				cnt++;
			}
		}

		return cnt;
	}



	// 5개의 정수를 입력받은 후 원하는 번째 값을 구해주는 메소드

	int task10( int y) {
		Scanner sc = new Scanner(System.in);
		int result = 0;
		int[] data = new int[5];
		for (int i = 0; i < data.length; i++) {
			System.out.println( i+1+"번째 정수를 입력하세요");
			data[i] = sc.nextInt();
		}
		for (int i = 0; i < data.length; i++) {
			if(data[i] == y) {
				result = i+1;
			}
		}




		return result;
	}

	// 다이아
	// 한글을 정수로 바꿔주는 메소드(일공이사 -> 1024)
	int task11(String str) {


		String result ="";
		String hangel ="0123456789";

		int[] num = {0,1,2,3,4,5,6,7,8,9};
		String text = "영일이삼사오육칠팔구";

		for (int i = 0; i < str.length(); i++) {
			for (int j = 0; j < text.length(); j++) {
				if(str.charAt(i) == text.charAt(j)) {
					result += num[j]+"";
				}
			}
		}
		return Integer.parseInt(result);
	}

	// 마스터
	// 5개의 정수를 입력받고 최대값과 최소값을 구해주는 void형 메소드(메소드 안에서 출력 금지, 리턴타입은 void)

	//	void task12(int[] num) {
	//
	//		//			int[] arData = {num1,num2,num3,num4,num5};
	//
	//
	//		int min = 0, max = 0;
	//		min = num[0];
	//
	//		for (int i = 0; i < num.length; i++) {
	//
	//
	//			if(num[i] > max) {
	//				max = num[i];
	//			}
	//			if(num[i]< min) {
	//				min = num[i];
	//			}
	//		}
	//		System.out.println("최소값 : "+min+" 최대값 : "+max);
	//	}


	// 메소드 내에서 입력받기
	void task12() {




		Scanner sc = new Scanner(System.in);
		int[] num = new int[5];
		for (int i = 0; i < num.length; i++) {
			System.out.println(i+1+"번째 정수를 입력하세요");
			num[i] = sc.nextInt();
		}


		int min = 0, max = 0;
		min = num[0];

		for (int i = 0; i < num.length; i++) {


			if(num[i] > max) {
				max = num[i];
			}
			if(num[i]< min) {
				min = num[i];
			}
		}
		result[0] = max;
		result[1] = min;

	}




}
