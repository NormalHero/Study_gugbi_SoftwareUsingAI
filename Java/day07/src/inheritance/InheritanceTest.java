package inheritance;


class A{
	String name ="A";
	int data = 10;
	
	public A() {
		System.out.println("부모 생성자 호출");
	}
}

class B extends A{
	String name ="B";  // 부모 클래스에 동일한 변수명이 있다면 자식의 것을 사용함
	
	public B() {
//		super();
		System.out.println("자식 생성자 호출");
	}
	
	void printData() {
		System.out.println(data);
	}
}


public class InheritanceTest {
	public static void main(String[] args) {
		
		B b = new B();		
	
		
		System.out.println(b.name);
		b.printData();
		

	}
}
