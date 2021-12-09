package lambda;

public class LambdaTest {
	public static void main(String[] args) {
	
		
							// 선언부           사용부
		LambdaInter lambda1 =( number) -> number %10 ==0; // 람다식
		boolean check = lambda1.checkMultipleOf10(10);
		System.out.println(check);
		
		
		
		LambdaInter lambda2 =(int number) ->{
			System.out.println("10의 배수 검사");return number %10 ==0;};
		boolean check2 = lambda2.checkMultipleOf10(10);
		
		
		
		// new 생성자 -> 구현이 안된 부분을 구현 => 주소값 => 메소드 사용 => 저장공간에 담을수있음		
//	boolean check =	new LambdaInter() {
//			
//			@Override
//			public boolean checkMultipleOf10(int number) {
//				// TODO Auto-generated method stub
//				return number % 10 == 0;
//				// 할당된 주소값
//			}
//		}.checkMultipleOf10(10);  
//		
		
	}
}
