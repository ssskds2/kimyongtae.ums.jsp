<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kimyongtae.ums.user.service.UserService" %>
<%@ page import="kimyongtae.ums.user.service.UserServiceImpl" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	boolean result = false;
	
	String userName = request.getParameter("userName");
	if(userName != null && !userName.equals("")){
		UserService userService = new UserServiceImpl();
		result = userService.join(userName);
	}
	
	if(result){
%>
	<c:redirect url="../main.jsp?msgId=11"/>
<%
	}else{
%>	
	<c:redirect url="../main.jsp?msgId=10"/>
<%
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>