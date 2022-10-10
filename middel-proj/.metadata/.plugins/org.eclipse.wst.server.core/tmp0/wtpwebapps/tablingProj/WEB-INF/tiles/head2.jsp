<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="${pageContext.request.contextPath}/css/head.css" rel="stylesheet" type="text/css">
<header class="head_container">
  <table class="head_table">
    <tr>
      <!-- 비회원으로 서비스 이용시 로고 클릭 메인화면 연결 -->
      <c:if test="${empty loginMember }">
	      <td>
	        <a href="main.do"><img src="${pageContext.request.contextPath }/img/logo2.PNG" alt="logo" /></a>
	      </td>
	      <td class="head_logo">
	      	<a href="main.do">JUL SEO</a>
	      </td>
      </c:if>
      <!-- 관리자로 서비스 이용시 로고 클릭 관리자메인화면 연결 -->
      <c:if test="${loginMember.role == 0 }">
	      <td>
	        <a href="admin_main.do?pageNum=1&postNum=10"><img src="${pageContext.request.contextPath }/img/logo2.PNG" alt="logo" /></a>
	      </td>
	      <td class="head_logo">
	      	<a href="admin_main.do?pageNum=1&postNum=10">JUL SEO</a>
	      </td>
      </c:if>
      <!-- 가게 사장님으로 서비스 이용시 로고 클릭 가게사징님메인화면 연결 -->
      <c:if test="${loginMember.role == 1 }">
	      <td>
	        <a href="owner_main.do"><img src="${pageContext.request.contextPath }/img/logo2.PNG" alt="logo" /></a>
	      </td>
	      <td class="head_logo">
	      	<a href="owner_main.do">JUL SEO</a>
	      </td>
      </c:if>
      <!-- 손님으로 서비스 이용시 로고 클릭 손님메인화면 연결 -->
      <c:if test="${loginMember.role == 2 }">
	      <td>
	        <a href="main.do"><img src="${pageContext.request.contextPath }/img/logo2.PNG" alt="logo" /></a>
	      </td>
	      <td class="head_logo">
	      	<a href="main.do">JUL SEO</a>
	      </td>
      </c:if>
      
      
      <td>
        <c:if test="${empty loginMember.memberId }">
        	<a>GUEST</a>
        	<a class="nav-link" href="memberLoginForm.do">로그인</a>
        </c:if>
        <c:if test="${not empty loginMember.memberId }">
        	<c:if test="${loginMember.role eq 0 }">
         	<a>${loginMember.memberId } 관리자님 입장!</a>
         </c:if>
         <c:if test="${loginMember.role eq 1 }">
     		<a>${loginMember.memberId } 사장님 입장!</a>
         </c:if>
         <c:if test="${loginMember.role eq 2 }">
         	<a>${loginMember.memberId } 손님 입장!</a>
         </c:if>
        	<a class="nav-link" href="memberLogout.do">로그아웃</a>
        </c:if>
      </td>
      <td class="td_search">
        <i class="uil uil-search"></i>
        <input type="text" id="keyword" name="keyword" onkeyup="enterkey()" placeholder="지역, 식당 또는 음식" />
      </td>
      <td class="td_width">
        <div class="dropdown">
          <button class="dropbtn">
            <span class="dropbtn_icon">게시판</span>
          </button>
          <div class="dropdown-content">
            <a href="#">공지게시판</a>
            <a href="postListPaging.do?pageNum=1&postNum=10">자유게시판</a>
          </div>
        </div>
      </td>
      <td class="td_width">
        <div class="dropdown">
          <c:if test="${not empty loginMember }">
	          <button class="dropbtn" onclick="location.href='memberInfoMyPage.do'">
	            <span class="dropbtn_icon">마이페이지</span>
	          </button>
          </c:if>
          <c:if test="${empty loginMember }">
	          <button class="dropbtn" onclick="loginRequired()">
	            <span class="dropbtn_icon">마이페이지</span>
	          </button>
          </c:if>
        </div>
      </td>
    </tr>
  </table>
</header>



