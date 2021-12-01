package day05;


class A{
	int data = 100;
	// 전역변수
	
	A(){
		System.out.println("안녕");
		// 생성자 호출시 "안녕" 출력
	}

	void printData() {
		System.out.println(data);
		// 전역변수를 출력
	}
}


public class ClassTest {
	public static void main(String[] args) {
		A a = new A(); // 생성자를 만듬
		// System.out.println(a); // 주소 값
		
		a.data =200;
		// a 객체의 data의 값을 200으로 변경 
		a.printData();
		// 변경된 200이 나온다.
	}


}
