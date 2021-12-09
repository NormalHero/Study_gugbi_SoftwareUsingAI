package lambda;

@FunctionalInterface//함수형 인터페이스
public interface NameLambda {
		// 외부에서 이름과 성을 전달받는 추상 메소드 선언
		public String dogetName(String secondName, String firstName);
}
