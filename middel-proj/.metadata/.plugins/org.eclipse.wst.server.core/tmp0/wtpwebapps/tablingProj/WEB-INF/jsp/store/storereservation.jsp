<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/store/StoreCss2.css?ver=2"
	rel="stylesheet" type="text/css">
</head>
<jsp:include page="/sidebar/reservationsidebar.jsp"/>
<a href="#"><img src="${pageContext.request.contextPath }/img/newLogo.png" alt="logo" class="logo_img" /></a>
<body>
	<div id = "reservation_body">
		<h2>������ ��Ȳ</h2>
		<table id=tab>
			<thead>
				<tr>
					<th>�����ڸ�</th>
					<th>������</th>
					<th>�����ο�</th>
					<th>����ð�</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="reservations" value="${list }"></c:set>
				<c:forEach var="vo" items="${reservations }">
					<tr>
						<td>${vo.memberId}</td>
						<td>${vo.storeName }</td>
						<td>${vo.peopleNum}��</td>
						<td>${vo.reservationTime }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="outer">
		<div class="pagination">
			<c:if test="${pageInfo.prev }">
				<a id="menu"
					href="storereservation.do?pageNum=${pageInfo.startPage - 1 }&postNum=${pageInfo.cri.postNum}">Prev</a>
			</c:if>
			<c:forEach var="num" begin="${pageInfo.startPage }"
				end="${pageInfo.endPage }">
				<a
					href="storereservation.do?pageNum=${num}&postNum=${pageInfo.cri.postNum}">${num }</a>
			</c:forEach>
			<c:if test="${pageInfo.next }">
				<a id="menu"
					href="storereservation.do?pageNum=${pageInfo.endPage + 1 }&postNum=${pageInfo.cri.postNum}">Next</a>
			</c:if>
		</div>
	</div>
</body>
</html>