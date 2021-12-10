package obj;



public class Student {
	int num;
	String name;

	public Student() {;}

	public Student(int num, String name) {
		super();
		this.num = num;
		this.name = name;
	}

	public Student(String name) {
		super();
		this.name = name;
	}

	@Override
	public String toString() {
		return "이름 : " + name;
	}

	//과제
	// 학생의 번호가 같다면 true가 나올수 있도록 equals()를 재정의 하기 
	// 주소비교 - 타입 비교 - 다운 캐스틩 - 번호 비교 이후 true;
	public boolean equals(Object stu) {
		if( this == stu) {
			// 주소값 비교
			return true; // 주소값이 값다면 같은 것으로 true을 리턴
			// 주소값이 같지 않다면 다음 비교 실행
		}
		
			// 타입을 비교한다
			if(stu instanceof Student) {
				Student anotherStuName =(Student) stu; // num비교를 위한 다운캐스팅
				if(this.num == anotherStuName.num && this.name == anotherStuName.name ) {
					// 타입이 동일하다면 -> num그리고 name이  같다면 같은 값 이므로 true를 리턴한다.
					return true;
				}
			}
			// 위 조건문에서 true를 만나지 못하면 같은 값이 아니라고 판단하고 false를 리턴한다 . 
			return false;
		

	}
}