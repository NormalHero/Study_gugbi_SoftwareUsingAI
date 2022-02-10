<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그 실습2</title>
<style type="text/css">
		table,tr,td {
		border: 1px solid black;
}
</style>
</head>
<body>
<!--
	아래의 모양과 같이 테이블 만들기(반복문 사용)
	
	□
	□□
	□□□
	□□□□
	□□□□□
	□□□□□
	□□□□
	□□□
	□□
	□
-->

<table>

<%
for (int i = 0; i < 5; i++) {
	%>
	<tr>
	<%
    for (int j = 0; j <= i; j++) {
        %>
        	<td>ㅇㅇㅇ</td>
        <%
    }
    %>
    	</tr>
    <%
}
%>
<%
for (int i = 0; i < 5; i++) {
	%>
	<tr>
	<%
    for (int j = 0; (i+j)<5; j++) {
        %>
        	<td>ㅇㅇㅇ</td>
        <%
    }
    %>
    	</tr>
    <%
}
%>


</table>


</body>
</html>