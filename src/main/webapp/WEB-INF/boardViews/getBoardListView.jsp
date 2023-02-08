<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" 
	prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2> 게시판 전체 내용 </h2>
	<a href="/insertBoard.do"> 새로운 게시판 추가 </a>
	<table border="1"> 
		<tr height="40">
			<td width="150" align="center" > 번호 </td>
			<td width="150" align="center" > 제목 </td>
			<td width="150" align="center" > 글쓴이 </td>
			<td width="150" align="center" > 내용 </td>
		</tr>
		<c:forEach items="${bList}" var="board">
			<tr height="40">
				<td width="150" align="center" > ${board.seq} </td>
				<td width="150" align="center" > 
					<a href="/getBoard.do?seq=${board.seq}">
						${board.title} </a>
				</td>
				<td width="150" align="center" > ${board.writer} </td>
				<td width="150" align="center" > ${board.content}</td>
			</tr>	
		</c:forEach>
	</table>
<center>
</body>
</html>