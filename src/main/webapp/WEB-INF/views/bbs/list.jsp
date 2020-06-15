<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<!-- 게시글 목록 가져오기 -->
	<table border=1 aling=center width=500 >
		<tr bgcolor="yellow"> 
			<td align=center>Name</td>
			<td align=center>ID</td>
			<td align=center>Del</td>
			<td align=center>Mod</td>
			<c:forEach items="${list}" var="vo">
				<tr bgcolor="white">
					<td align=center>${vo.name}</td>
					<td align=center><a href="view?id=${vo.id}&name=${vo.name}">${vo.id}</a></td>
					<%-- <td>
					<c:forEach begin="1" end="${vo.bIndent}">ㄴ</c:forEach>
					<a href="contentView?bNo=${vo.bNo}">${vo.bSubject}</a>
				</td>
				<td>${vo.bName}</td>
				<td>${vo.bDate}</td>
				<td>${vo.bHit}</td> --%>
					<td align=center><a href="del?id=${vo.id}">Del</a></td>
					<td align=center><a href="modify?id=${vo.id}">Mod</a></td>
				</tr>
			</c:forEach>
		<tr>
			<td colspan=4 align=right><a href="input">글추가aa</a></td>
		</tr>
	</table>
</body>
</html>