<%@page import="java.io.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="java.util.Enumeration" %>
  <%@ page import ="java.net.URL" %>
<!DOCTYPE html>
<html>9<head>
<meta charset="UTF-8">
<title>Log 예제</title>
</head>
<body>
<h3>application_02.jsp의 내용</h3>

<%
	//application_02.jsp의 내용을 불러오는 예제
	String target = "/jsp/application_02.jsp";
	String path = application.getRealPath(target);
	File file = new File(path);
	
	try(BufferedReader br = 
			new BufferedReader(
			new InputStreamReader(
					new FileInputStream(file), "utf-8"))){
		String content = null;
		while( (content = br.readLine()) !=null )
			out.println("<p>"+content +"</p>");
		
	}catch(Exception e){
		;
	}
	
%>


<%
	String resourcePath = "/message/notice.txt";
	char[]buff = new char[128];
	int len = -1;
	URL url = application.getResource(resourcePath);
	try(InputStreamReader br = new InputStreamReader(
			url.openStream(),"utf-8")){
		while ((len = br.read(buff)) != -1){
			out.print(new String(buff, 0, len));
		}
	}catch(IOException ex){
		out.println("익셉션 발생:" + ex.getMessage());
	}

%>

</body> 
</html>