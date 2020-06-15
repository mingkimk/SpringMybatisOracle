<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	${userView.id}/ ${userView.name}

	<!-- 게시글 목록 가져오기 -->
	<table border=1 aling=center width=500 bgcolor="blue">
		<tr bgcolor="yellow">
			<font color=white> <c:forEach items="${list}" var="vo">
					<tr bgcolor="white">
						<td align=center>${vo.text}</td>
					</tr>
				</c:forEach>
			</font>
		</tr>
	</table>

	<form name="bbb" action="replyProcess" method="post">
		<input type="text" name="id" value="${userView.id}" readonly>
		글의 댓글입니다. 내용 : <input type="text" name="text"> <input
			type="submit" value="Reply">
	</form>
</body>
</html>