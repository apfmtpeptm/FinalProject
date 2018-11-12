<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
<h2> 메인 페이지의 내용1</h2>

<% 
	//RequestDispatcher rd = request.getRequestDispatcher("/JSP/include_sub.jsp");
	//rd.include(request,response);
	
	//pageContext.include("/JSP/include_sub.jsp");
	
	
%>

<jsp:include page="/jsp/include_sub.jsp"></jsp:include>
<h2> 메인 페이지의 내용2</h2>


</body>
</html>