package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Application01")
public class Application01 extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 동기화 처리의 2가지 방법
		// 1. synchronized를 사용하여 특정 메소드를 
		// 하나의 쓰레드가 선점하여 사용할 수 있도록 하는 방법
		// EX) public synchronized void disp(){}
		// 2. 특정 블럭의 코드를 동기화 처리하는 방법
		// 특정 코드 영역을 중괄호로 묶은 후, 해당 영역을 
		// synchronized를 사용하여 동기화 영역으로 지정
		// EX) synchronized(동기화 객체명){}
		// 동기화 객체: 현재 실행 중인 쓰레드가 선정하고자 하는 객체를 가리킴
		
		System.out.printf("Before synchro(%s)",
			Thread.currentThread().getName());
		
	}

}
