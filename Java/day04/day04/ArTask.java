package day04;

import java.util.Scanner;

public class ArTask {
	public static void main(String[] args) {
//	    //브론즈
//	      //1~10까지 배열에 담고 출력
//			int[] arData = new int[10];
//			for (int i = 0; i < arData.length; i++) {
//				arData[i] = i+1;
//				System.out.println(arData[i]);
//			}
//		
//		
//	      //10~1까지 중 짝수만 배열에 담고 출력
//			int[] arData2 = new int[10];
//			for (int i = 0; i < arData.length; i++) {
//				arData[i] = 10 - i;
//				if(arData[i] %2 == 0) {
//				System.out.println(arData[i]);
//				}
//			}
			
	      //1~100까지 배열에 담은 후 홀수만 출력
			
//			int[] arData3 = new int[100];
//			for (int i = 0; i < arData3.length; i++) {
//				arData3[i] = i+1;
//				if(arData3[i] %2 == 1 ) {
//				System.out.println(arData3[i]);
//				}
//			}
//	      
	      //실버
	      //1~100까지 배열에 담은 후 짝수의 합 출력
//		int[] arData4 = new int[100];
//		int sum= 0;
//		for (int i = 0; i < arData4.length; i++) {
//			arData4[i] = i+1;
//			if(arData4[i] %2 == 0 ) {
//			sum += arData4[i];
//			}
//		}
//		System.out.println(sum);
		
	      //A~F까지 배열에 담고 출력
//		char[] arData5 = new char[6];
//		
//		for (int i = 0; i < arData5.length; i++) {
//			arData5[i] = (char) (65+i);
//			System.out.println(arData5[i]);
//		}
		
		
	      //A~F까지 중 C 제외하고 배열에 담은 후 출력
//		char[] arData6 = new char[6];
//		
//		for (int i = 0; i < arData6.length; i++) {
//			
//			if(arData6[i] % 4 == 0) {
//				
//			}else {
//			arData6[i] = (char) (65+i);
//			}
//			System.out.println(arData6[i]);
//			
//		}
		
//      char[] arData = new char[5];
//      for (int i = 0; i < arData.length; i++) {
//         arData[i] = (char)(i > 1 ? i + 66 : i + 65);
//         System.out.println(arData[i]);
//      }

	
		
	      
	      //골드
	      //5개의 정수를 입력받고 배열에 담은 후 최대값과 최소값 출력
			Scanner sc = new Scanner(System.in);
			String msg = "번째 정수를입력하세요!";
		
			int[] arData7 = new int[5];
			int min = 0, max = 0;
			
			for (int i = 0; i < arData7.length; i++) {
				System.out.println(i + 1 + msg);
				
				arData7[i] = sc.nextInt();
			}
			min = arData7[0];
			
			for (int i = 0; i < arData7.length; i++) {
			
				
				if(arData7[i] > max) {
					max = arData7[i];
				}
				if(arData7[i]< min) {
					min = arData7[i];
				}
			}
			System.out.println("최소값 : "+min+" 최대값 : "+max);
//			
//		      int[] arData = new int[5];
//		      int[] results = new int[2];
//		      
//		      Scanner sc = new Scanner(System.in);
//		      
//		      for (int i = 0; i < arData.length; i++) {
//		         System.out.print(i + 1 + "번째 정수 : ");
//		         arData[i] = sc.nextInt();
//		      }
//		      //최대값
//		      results[0] = arData[0];
//		      //최소값
//		      results[1] = arData[0];
//		      
//		      for (int i = 1; i < arData.length; i++) {
//		         if(results[0] < arData[i]) { results[0] = arData[i]; }
//		         if(results[1] > arData[i]) { results[1] = arData[i]; }
//		      }
//		      
//		      System.out.println("최대값 : " + results[0]);
//		      System.out.println("최소값 : " + results[1]);
//
//			
			
		
	      
	      //다이아
	      //사용자가 입력할 정수의 개수만큼 배열을 만든 후 정수를 입력받고 평균 구하기
			
			String msg2 = "배열의 길이를 입력하세요";
			String msg3 = "번째 정수를 입력하세요";
			System.out.println(msg2);
			int cnt = sc.nextInt();
			double avg = 0.0;
			int sum = 0;
			int[] arData8= new int[cnt];
			for (int i = 0; i < arData8.length; i++) {
				System.out.println(i + 1 + msg2);
				arData8[i] = sc.nextInt();
				sum += arData8[i];
				
			}
			avg = sum*1.0 /arData8.length ;
			System.out.println(avg);
		
		
		
		
	}
}
