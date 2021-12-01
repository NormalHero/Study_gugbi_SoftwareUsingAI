package day05;


class Car{
	// 전역 변수 
	// 인스턴스 변수 
	String brand;
	String color;
	int price;


	public Car(/*매개변수*/String brand, String color, int price){
		this.brand = brand;
		this.color = color;
		this.price = price;
		// 전역 변수와 매개 변수는 저장되는 위치가 다르기 떄문에 이름이 같아도 선언이 가능하다.
		// 그러나 메소드에서는 매개 변수가 우선순위가높다.
		// this로 Car 객체의 주소를 받아와 사용한다.
		
	}

	public Car(String brand, int price) {
		this.brand = brand;
		this.price = price;
	}
	
	public Car(int price){
		this.price = price;
	}


	void engineStart() {
		// 지역 변수

		//		System.out.println(this);
		// Car 객체의 주소를 받아옴 

		System.out.println(this.brand+" 시동 켜기");

	}
	void engineStop() {
		System.out.println(brand+"시동 끄기");
	}

}



public class Road {

	public static void main(String[] args) {
		Car momCar = new Car("Benz","Black",10_000);
		Car dadyCar = new Car("BMW","Blue",8_000);
		Car myCar = new Car("","",600);


		momCar.engineStart();
		dadyCar.engineStart();

		System.out.println(momCar);
		System.out.println(dadyCar);
		//		System.out.println(myCar);



	}

}
