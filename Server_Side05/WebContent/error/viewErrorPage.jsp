<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage ="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 처리 페이지</title>
</head>
<body>
<h3>에러 클래스 : <%= exception.getClass().getName() %></h3>
<h4>에러 메시지 : <%= exception.getMessage() %></h4>
</body>
</html>