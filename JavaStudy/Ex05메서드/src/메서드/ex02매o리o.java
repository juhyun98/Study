package 메서드;

public class ex02매o리o {

	public static void main(String[] args) {
		
		// 매개변수 있고, 리턴타입 있다.
		// 전달인자 있고, 리턴타입 자리에 데이터 타입이 명시되어있다.(+ return)
		// 2개의 숫자를 빼기해준 결과값을 받을 수 있는 minus라는 매서드
		
		minus(8, 3); // + return 출력x
		System.out.println(minus(8, 3));
		
		
	}// main 밖

	public static int minus(int num1 , int num2) {
		// + 리턴타입이 있으면 (데이터 타입이 있으면) 반드시 return이라는 키워드 작성
		return num1 - num2 + 100; 
	}
	
}
