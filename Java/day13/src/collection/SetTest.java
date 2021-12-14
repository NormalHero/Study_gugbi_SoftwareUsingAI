package collection;

import java.util.HashSet;
import java.util.Iterator;

public class SetTest {
	public static void main(String[] args) {
		HashSet<String> fruitSet = new HashSet<>();
		fruitSet.add("수박");
		fruitSet.add("자두");
		fruitSet.add("망고");
		fruitSet.add("딸기");
		fruitSet.add("사과");
		fruitSet.add("사과");
		fruitSet.add("사과");
		
		System.out.println(fruitSet);
		
		
		// 순서를 부여하고 기존 타입에서 Iterator타입으로 변경되고 이떄 String를 명시해야한다 
		Iterator<String> iter = fruitSet.iterator();
		while(iter.hasNext()) {
			System.out.println(iter.next());
		}
	}
}
