<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="com.dbms.mysql.task.UserDAO" id="dao"/>

<%
	if(dao.idCk(request.getParameter("userId"))){
		out.print("이미 존재하는 아이디입니다");
	}else{
		out.print("사용 가능한 아이디입니다");
	}
%>