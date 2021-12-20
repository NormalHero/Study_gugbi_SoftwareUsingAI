package file;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class FileTask {
	public static void main(String[] args) throws IOException {
		// 족발, 보쌈, 짜장면, 탕수육 
		// food.txt 파일을 현재 경로에 생성하고
		// 파일 내용은 "족발 , 보쌈, 짜장면, 탕수육 네 가지 음식으로 작성한다.
		// 각 음식은 줄바꿈 후 다음 음식을 넣도록 한다. 
		
//		BufferedWriter bw = new BufferedWriter(new FileWriter("food.txt"));
////		BufferedWriter bw = new BufferedWriter(new FileWriter(new File("food.txt"),true));
//		String[] foods = {"족발","보쌈","짜장면","탕수육"};
		
		
//		for (int i = 0; i < foods.length; i++) {
//			
//			bw.write(foods[i]+ "\n");
//		}
//		bw.close();
//		
//		BufferedReader br = null;
//		String line= null;
//		
//		try {
//		br = new BufferedReader(new FileReader("food.txt"));
//		
//		while( (line = br.readLine())!= null){
//			System.out.print(line);
//			System.out.println();
//		}
//		
//		}catch (FileNotFoundException e) {
//			System.out.println("없는 파일 입니다. ");
//		}finally {
//			if(br != null) {
//			br.close();
//			}
//		}
		
		File f = new File("food.txt");
		if(f.exists()) {
			f.delete();
			System.out.println("삭제성공");
		}
	}
}
