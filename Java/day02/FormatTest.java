package day02;

public class FormatTest {
	public static void main(String[] args) {
		String name = "박민수";
		int age = 20;
		double weight = 85.22;
		System.out.printf("이름 : %s\n", name);
		System.out.printf("나이 : %d살\n", age);
		
		// %f에서 소수점을 자르면 반올림된다. 
		System.out.printf("몸무게 : %.1fkg", weight);

	
	}
}
