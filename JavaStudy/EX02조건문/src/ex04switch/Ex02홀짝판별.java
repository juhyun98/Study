package ex04switch;

import java.util.Scanner;

public class Ex02홀짝판별 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.print("정수입력: ");
		
		int num = sc.nextInt();
		
		switch (num % 2) {
		
		case 0:
			System.out.println("짝수");
			break;
		case 1:
			System.out.println("홀수");
			break;
		}sc.close();
		//int a = sc.nextInt();
		//int num = a % 2 == 1 ? 1 : 2;
		
		//switch(num) {
		
		//case 1:
			//System.out.println("홀수입니다!");
			//break;
		//case 2:
			//System.out.println("짝수입니다!");
			//break;
		}
		
	}


