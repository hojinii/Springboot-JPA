<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2> 선택된 게시판 보기 </h2>
<table border="1">
	<tr height="50" align="center">
		<td width="150" >  번호 </td>
		<td width="250" >  ${board.seq} </td>
	</tr>
	<tr height="50" align="center">
		<td width="150" >  글제목 </td>
		<td width="250" >  ${board.title} </td>
	</tr>
	<tr height="50" align="center">
		<td width="150" >  글작성자 </td>
		<td width="250" >  ${board.writer} </td>
	</tr>
	<tr height="50" align="center">
		<td width="150" >  글내용 </td>
		<td width="250" >  ${board.content} </td>
	</tr>
	<tr height="50" align="center">
		<td colspan="2" >
			<input type="button" value="수정하기"
			onclick="location.href='/modifyBoard.do?seq=${board.seq}'" />  
			<input type="button" value="삭제하기"
			onclick="location.href='/deleteBoard.do?seq=${board.seq}'" />
			<input type="button" value="목록보기"
			onclick="location.href='/getBoardList.do'" />
		</td>
		
	</tr>
</table>
</center>
</body>
</html>