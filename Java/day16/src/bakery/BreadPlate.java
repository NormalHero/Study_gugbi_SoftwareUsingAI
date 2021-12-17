package bakery;

public class BreadPlate {
	
	private static BreadPlate plate;
	
	int breadCount;
	int eatCount;
	
	// 싱글톤 패턴
			private BreadPlate() {;} // 기본생성자를 다른데서 사용하지 못하게 막음
	
			public static BreadPlate getInstance() {
				// getInstance()로 가져오면 null 값이 온다(위에 new 를 하지않음)
				
				if(plate == null) { // 한번만 new를 해야하기 떄문에 null 일때맨 해준다. 
				plate = new BreadPlate();
				}
				return plate;
			}
	
	
			public  synchronized void makeBread() {
			// 쓰레드가 하나씩들어와야 하나씩 제어 할 수 있기 때문에 synchronized를 해준다
				if(breadCount > 9) {
					System.out.println("빵이 가득 찼습니다. ");
					try {wait();} catch (InterruptedException e) {;}
				}
				breadCount++;
				System.out.println("빵을 1개 만들었습니다. 총 : "+breadCount+"개");
			}
			
			public synchronized void eatBread() {
				
				if(eatCount==20) {
					System.out.println("빵이 다 떨어졌습니다.");
				}else if(breadCount <1 ) {
					System.out.println("🍩🍩🍩🍩🍩🍪🍪🍪🍪 빵을 만들고 있어요! 🍩🍩🍩🍩🍩🍪🍪🍪🍪");
				}else {
					breadCount--;
					eatCount++;
					System.out.println("빵을 1개 먹었습니다. 총: "+breadCount+"개");
					notify();
				}
			}
			
			
}
