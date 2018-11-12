<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기본 객체를 활용한 영역 테스트</title>
</head>
<body>

<%
	pageContext.setAttribute("date_pc",100);
%>
<h3>pageContext 영역에 값을 저장</h3>
<h3>data_pc: <%=pageContext.getAttribute("data_pc") %></h3>



<%
	request.setAttribute("date_rq",200);
%>
<h3>request 영역에 값을 저장</h3>
<h3>data_rqc: <%=request.getAttribute("data_rq") %></h3>


<%
	session.setAttribute("date_ss",300);
%>
<h3>sesseion 영역에 값을 저장</h3>
<h3>data_ss: <%=session.getAttribute("data_ss") %></h3>

<%
	application.setAttribute("date_ap",400);
%>
<h3>application 영역에 값을 저장</h3>
<h3>data_ap: <%=application.getAttribute("data_ap") %></h3>

	<% 
	RequestDispatcher rd =
		request.getRequestDispatcher("/JSP/scope_03.jsp");
	rd.forward(request,response);
	
	%>

</body>
</html>