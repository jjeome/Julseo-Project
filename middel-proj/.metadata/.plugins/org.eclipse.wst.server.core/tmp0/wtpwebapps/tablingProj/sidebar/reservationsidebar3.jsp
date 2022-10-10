<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Curve Outside in Active Tab</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/sidebar.css" />
    <link
      rel="stylesheet"
      href="https://unicons.iconscout.com/release/v2.1.9/css/unicons.css"
    />
  </head>

  <body>
    <div class="navigation">
      <ul>
        <li class="list">
          <a href="${pageContext.request.contextPath }/storereservation.do?pageNum=1&postNum=10">
            <span class="icon">
              <i class="input-icon uil uil-user-exclamation"></i>
            </span>
            <span class="title">예약자 현황</span>
          </a>
        </li>
        <li class="list">
          <a href="${pageContext.request.contextPath }/storeListByOwner.do">
            <span class="icon">
              <i class="input-icon uil uil-apps"></i>
            </span>
            <span class="title">내 점포조회</span>
          </a>
        </li>
        <li class="list active">
          <a href="${pageContext.request.contextPath }/storeRegisterForm.do">
            <span class="icon">
              <i class="input-icon uil uil-store"></i>
            </span>
            <span class="title">점포등록</span>
          </a>
        </li>
               <li class="list">
          <a href="memberLogout.do">
            <span class="icon">
             <i class="input-icon uil uil-signout"></i>
            </span>
            <span class="title">로그아웃</span>
          </a>
        </li>
      </ul>
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script>
  const list = document.querySelectorAll(".list");
  function activeLink() {
    list.forEach((item) => item.classList.remove("active"));
    this.classList.add("active");
  }

  list.forEach((item) => item.addEventListener("click", activeLink));
  </script>
</html>
