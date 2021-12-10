package obj;

public class StringTest {
	public static void main(String[] args) {
		
		String data1 = "ABC";
		String data2 = "ABC"; 
		// 필드를 우선시 하지않고 그안에 있는 문자열 값을 우선시 한다고 할때 
		
		String data3 = new String("ABC");
		String data4 = new String("ABC");
		// 문자열 값보다 필드를 우선시 한다고 할때 
		
		System.out.println(data1 == data2);
		System.out.println(data1.equals(data2));
		
		
		System.out.println(data3 == data4); // 필드의 주소를 비교한다 
		System.out.println(data3.equals(data4));
		// equals는 String 클래스에서 재정의가 되었으므로 결과가 ==랑 다르다.
		// equals는 필드 주소가 아닌 값의 주소를 비교한다
		
	}
}
