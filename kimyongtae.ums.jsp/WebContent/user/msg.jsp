<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<<c:choose>
	<c:when test="${param.msgId==11 }">
		<script>alert('가입성공','success');</script>
	</c:when>
	<c:when test="${param.msgId==10 }">
		<script>alert('가입실패','error');</script>
	</c:when>
	<c:when test="${param.msgId==21 }">
		<script>alert('수정성공','success');</script>
	</c:when>
	<c:when test="${param.msgId==20 }">
		<script>alert('수정실패','error');</script>
	</c:when>
	<c:when test="${param.msgId==31 }">
		<script>alert('탈퇴성공','success');</script>
	</c:when>
	<c:when test="${param.msgId==30 }">
		<script>alert('탈퇴실패','error');</script>
	</c:when>
</c:choose>



