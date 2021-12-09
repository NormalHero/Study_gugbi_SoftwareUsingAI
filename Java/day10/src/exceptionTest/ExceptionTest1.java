package exceptionTest;

public class ExceptionTest1 {
	public static void main(String[] args) {
		int[] data = {10, 20, 30, 40};

		
		try {
			data[-1] = 10;
		} catch (ArrayIndexOutOfBoundsException ae) {
			System.out.println("다시 입력해주세요!");
		}catch (Exception e) {
			System.out.println(e);
		}
		
		
//		try {
//		System.out.println(10/0);
//		
//		}catch (Exception e) {
//			System.out.println("0으로 나눌 수 없습니다.");
////				System.out.println(e);
//				
//		}
//		System.out.println("반드시 실행해야 되는 문장");
		
	}
}
