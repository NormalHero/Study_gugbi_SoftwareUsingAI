package lambda;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Scanner;
import java.util.stream.IntStream;

public class StreamTask {
	public static void main(String[] args) {
//		ArrayList<Integer> arrList = new ArrayList<>();
//		ArrayList<Object> arrList = new ArrayList<>();
		ArrayList<Integer> arrList = new ArrayList<>();
		Scanner sc = new Scanner(System.in);
		// 1~10 까지 ArrayList에 담고 출력
//				
//		IntStream.range(0, 10).forEach(i -> arrList.add(i + 1));
//		System.out.println(arrList);
		
		
		
		// 1~100 가지 중 짝수만 ArrayList에 담고출력
//		IntStream.range(0, 101).filter(num -> num % 2 == 0).forEach(i -> arrList.add(i ));
//		System.out.println(arrList);
		// A~F 까지 ArrayList에 담고 출력
//		IntStream.range(65, 71).forEach(i -> arrList.add((char)i ));
//		System.out.println(arrList);
		// A~F 까지 중 D 제외하고 ArrayList에 담은 후 출력
//		IntStream.range(65, 71).filter(num -> num != 68).forEach(i -> arrList.add((char)i ));
//		System.out.println(arrList);
		
		// 5개의 정수를 입력받은 후 ArrayList에 담고 최대값과 최소값 출력(구글링)
//		int max=0;
//		int min=0;
//		IntStream.range(0, 5).forEach(i -> 
//		{	
//			int num =0;
//			System.out.println(i+1+"번째 정수 입력");
//			 num = sc.nextInt();
//			arrList.add(num);
//			
//		}
//		
//		);
//		max = Collections.max(arrList);
//		min = Collections.min(arrList);
//		System.out.println("배열중 최대값 :" + max +" 최소 값:" + min);
		
		
//		문자열 5개 입력받고 모두 소문자로 변경 
//		IntStream.range(0, 5).forEach(i -> 
//		{	
//			String str ="";
//			System.out.println(i+1+"번째 문자열 입력");
//			 str = sc.next();
//			arrList.add(str.toLowerCase());
//			
//		}
//		
//		);
//		System.out.println(arrList);
		
		
		// 65 ~ 97
		// Apple, banana, Melon중 첫번째 문자가 대문자인 문자열 출력
//		ArrayList<String> datas = new ArrayList<>(Arrays.asList("Apple", "banana", "Melon"));
//      datas.stream().filter(c -> c.charAt(0) >= 65 && c.charAt(0) <= 97).forEach(System.out::println);
      


	     
	      
	
      
		
		
		
		// 한글을 정수로 변경 (map)
	      String hangle="일이삼사";
//	      data.chars().map(c -> c + 1).forEach(c -> System.out.println((char)c));	      
	      String hangleOri = "공일이삼사오육칠팔구";
	      String result = "";
	     
	      hangle.chars().forEach(i ->{
	    	  hangle.chars().map(c -> c +=hangleOri.indexOf(i));
	    	  System.out.print(Integer.parseInt(hangle));
	    	  });

	      
//	      char[] 
//	      IntStream.range(0,hangle.length()).forEach(i -> {
//	    	  String result = "";
//	    	   
//	    	  result += hangleOri.indexOf(hangle.charAt(i));
//	    	  chInt[0] = Integer.parseInt(result);
//	    	  
//	      });
//	      System.out.println(chInt[0]);
	
	     
	      
	      
	}
}
