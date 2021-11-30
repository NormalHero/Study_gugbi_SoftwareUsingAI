package day04;

public class ArTest {
	public static void main(String[] args) {
		int[] arData = {3, 5, 1, 9, 7};
		System.out.println(arData); // 배열의 첫번째 값의 주소값
		System.out.println(arData.length);
		
		
		int[] arData2 = new int[5]; 
		for (int i = 0; i < arData2.length; i++) {
			arData2[i] = 5-i;
			
		}
		for (int i = 0; i < arData2.length; i++) {
			
			System.out.println(arData2[i]);
		}
		
		
		
		
//		System.out.println(arData[0]);
//		System.out.println(arData[1]);
//		System.out.println(arData[2]);
//		System.out.println(arData[3]);
//		System.out.println(arData[4]);
//
//		for (int i = 0; i < arData.length; i++) {
//			System.out.println(arData[i]);
//		}

	}
}
