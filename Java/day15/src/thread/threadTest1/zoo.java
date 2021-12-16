package thread.threadTest1;

public class zoo {
/*
 * [실습]
동석이네 동물원에는 3마리의 동물이 있다.
각 동물은 울음 소리가 다르고 2마리의 동물은 동시에 운다.
나머지 1마리 동물은 2마리 동물이 모두 울고 나서 마지막에 운다.

package명은 threadTest1으로 만들고 클래스는 2개만 선언한다.
하나의 클래스에는 main 쓰레드가 있다.
Runnable 인터페이스로 멀티 쓰레드를 구현하고 반드시 join()을 사용한다.
※ 각 동물은 10번씩만 운다.

 * 
 * */
	
	
	public static void main(String[] args) {
//		Runnable[] animal= {new Animal("멍멍멍!"),new Animal("야옹 야옹~") ,new Animal("꿀꿀~") };
		
		Runnable dog = new Animal("멍멍멍!");
		Runnable cat = new Animal("야옹 야옹~");
		Runnable pig = new Animal("꿀꿀~");
		
		
	      Thread tDog = new Thread(dog, "멍멍이");
	      Thread tCat = new Thread(cat, "야옹이");
	      Thread tPig = new Thread(pig, "꿀꿀이");
	      tDog.start();
	      tCat.start();
	      try {
			tDog.join();
			tCat.join();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
	      tPig.start();
	}
	
}
