package marker;

public class Lab {
	// 동물을 받아와서 초식동물인지 육식동물인지 그리고 잡식동물인지
	// instanceof를 사용한다.
	// Animal클래스는 모든 동물의 부모 클래스이므로, up casting할 수 있다. 
	
	public void checkKind(Animal[] animals) {
			// 매개변수로 애니멀 배열을 받아온다
			// 외부에서 Animal 타입의 배열을 전달받고
		// 각 동물을 가져와야 하기 때문에 반복문을 사용한다.
		
		
			for (int i = 0; i < animals.length; i++) {
				// 각 동물을 인덱스번호로 가져와서 초식동물타입인지 instanceof로 비교한다,
				if (animals[i] instanceof Carbivore) {
					// 타입이 육식동물이라면 육식동물임을 출력
					System.out.println(animals[i].name+", 육식동물");
					
				}else if(animals[i] instanceof Herbivore) {
					// 각 동물을 인덱스번호로 가져와서 초식동물타입인지 instanceof로 비교한다,

					System.out.println(animals[i].name+", 초식동물");
				}else {
					//만약 인덱스로 가져온 동물이 육식동물도 아니고 초식동물도 아니면 잡식동물로 판단한다
					System.out.println(animals[i].name+", 잡식동물");
				}
			}
		
	}
	
	
	public static void main(String[] args) {
		
		Animal[] animals = { // 애니멀 배열 만들어준다
				new Bear("구마"),
				new Cow("듬직이"),
				new Dog("덕구"),
				new Tiger("어흥이")
				
		};
		
		Lab lab = new Lab();
		// 메소드 사용을 위한 객체화
		lab.checkKind(animals);
		// animals배열을 넘겨준다
		
	}
	
}
