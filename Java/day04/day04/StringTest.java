package day04;

public class StringTest {
	public static void main(String[] args) {
		String data = "ABC";
		String scores = "10,20,30";
		
		
		System.out.println(data.length());
		System.out.println(data.charAt(1));
		System.out.println(scores.split(",")[1]); // 특정 값을 기준으로 나눌때
		System.out.println(data.split("")[1]); // 구분점 없이 나눌때 인덱스값으로 나눌때
		
	
	}
}
