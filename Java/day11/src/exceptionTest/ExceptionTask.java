package exceptionTest;

import java.util.Scanner;

public class ExceptionTask {

	public static void main(String[] args) {


			Scanner sc = new Scanner(System.in);
			int[] data =new int[5]; // 입력받은 정수를 저장할 배열
			int index=0; //  인덱스 번호를 저장할 변수
			while (true) { // 배열이 꽉차도 계속 돌려줄 무한루프
				try {
				System.out.println(++index+"번째 정수를 입력하세요[q:나가기]");
				String ck = sc.nextLine(); // 미리 체크해서 나가기를 해줄 값을 받는다
				if (ck .toLowerCase().equals("q")) {
					System.out.println("종료"); // 대문자도 소문자로 해주는 메소드 사용  
					break; 
				}
				data[index-1] = Integer.parseInt(ck); // 위의 조건문을 지나 내려왔다면 정수 
				
				}catch (NumberFormatException e) {
					System.out.println("잘못된 입력입니다.");
					index --; // 잘못된 입력이라면 인덱스번호를 증가 시키지 않는다
				}catch (ArrayIndexOutOfBoundsException e) {
					System.out.println("더이상 배열에 공간이 없습니다");
					index --; // 배열이 꽉 찼다면 인덱스번호를 증가 시키지 않는다
					for (int i = 0; i < data.length; i++) {
						System.out.println(data[i]+ " ");
					}
					break;
				}
			
		}






}
}

