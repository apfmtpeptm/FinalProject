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
		
		// ����ȭ ó���� 2���� ���
		// 1. synchronized�� ����Ͽ� Ư�� �޼ҵ带 
		// �ϳ��� �����尡 �����Ͽ� ����� �� �ֵ��� �ϴ� ���
		// EX) public synchronized void disp(){}
		// 2. Ư�� ���� �ڵ带 ����ȭ ó���ϴ� ���
		// Ư�� �ڵ� ������ �߰�ȣ�� ���� ��, �ش� ������ 
		// synchronized�� ����Ͽ� ����ȭ �������� ����
		// EX) synchronized(����ȭ ��ü��){}
		// ����ȭ ��ü: ���� ���� ���� �����尡 �����ϰ��� �ϴ� ��ü�� ����Ŵ
		
		System.out.printf("Before synchro(%s)",
			Thread.currentThread().getName());
		
	}

}
