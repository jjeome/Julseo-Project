<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/member/memberMyPage.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/interested_store/interested_storeList.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/reservation/reservationListResult.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/review/reviewsById.css?after">
</head>
 <body>
    <jsp:include page="../../../sidebar.jsp"></jsp:include>

    <!-- ======= 모달창 영역 ======= -->
    <div class="modal_wrap" id="modal_wrap_1">
      <div class="modal_content">
        <table class="table_modify_nickname">
          <tr>
            <td colspan="2">닉네임 수정</td>
          </tr>
          <tr>
            <td>현재 닉네임</td>
            <td>${loginMember.nickName }</td>
          </tr>
          <tr>
            <td>변경 닉네임</td>
            <td>
              <input
                type="text"
                id="new_nickname"
                class="input_modify"
                autocomplete="off"
              />
            </td>
          </tr>
          <tr>
            <td class="table_btn" colspan="2">
              <button
                type="button"
                class="btn_popup_cancle"
                onclick="cancle_update()"
              >
                취소
              </button>
              <button
                type="button"
                class="btn_popup_sure"
                onclick="update_nickname()"
              >
                확인
              </button>
            </td>
          </tr>
        </table>
      </div>
    </div>

    <div class="modal_wrap" id="modal_wrap_2">
      <div class="modal_content">
        <table class="table_modify_phonenum">
          <tr>
            <td colspan="2">전화번호 수정</td>
          </tr>
          <tr>
            <td>현재 전화번호</td>
            <td>${loginMember.phoneNum }</td>
          </tr>
          <tr>
            <td>변경 전화번호</td>
            <td>
              <input
                type="text"
                id="new_phonenum"
                class="input_modify"
                autocomplete="off"
              />
            </td>
          </tr>
          <tr>
            <td class="table_btn" colspan="2">
              <button
                type="button"
                class="btn_popup_cancle"
                onclick="cancle_update()"
              >
                취소
              </button>
              <button
                type="button"
                class="btn_popup_sure"
                onclick="update_phonenum()"
              >
                확인
              </button>
            </td>
          </tr>
        </table>
      </div>
    </div>

    <div class="modal_wrap" id="modal_wrap_3">
      <div class="modal_content">
        <table class="table_modify_pwd">
          <tr>
            <td colspan="2">비밀번호 수정</td>
          </tr>
          <tr>
            <td>현재 비밀번호</td>
            <td>
              <input
                type="password"
                id="pre_pwd"
                class="input_modify"
                autocomplete="off"
              />
              <input
                type="hidden"
                id="login_pwd"
                value="${loginMember.password }"
              />
            </td>
          </tr>
          <tr>
            <td>변경 비밀번호</td>
            <td>
              <input
                type="password"
                id="new_pwd"
                class="input_modify"
                autocomplete="off"
              />
            </td>
          </tr>
          <tr>
            <td>비밀번호 확인</td>
            <td>
              <input
                type="password"
                id="new_pwd_check"
                class="input_modify"
                autocomplete="off"
              />
            </td>
          </tr>
          <tr>
            <td class="table_btn" colspan="2">
              <button
                type="button"
                class="btn_popup_cancle"
                onclick="cancle_update()"
              >
                취소
              </button>
              <button
                type="button"
                class="btn_popup_sure"
                onclick="update_pwd()"
              >
                확인
              </button>
            </td>
          </tr>
        </table>
      </div>
    </div>
    <!-- 팝업창 영역 끝 -->

    <!-- 마이페이지 - 정보수정 -->
    <div id="container_mypage_info_update">
      <h1>마이페이지</h1>
      <div class="title_content">
        <div class="title_mypage">
	        <form action="profileUpload.do" method="post" enctype="multipart/form-data">
	          <table class="table_title_mypage">
	            <tr>
	              <td class="profile_img">
	              <!-- 로그인 타입에 따라 분리하여 이미지 출력 (카카오 계정이면 카카오톡 프사) -->
	              <c:set var="img" value="${loginMember.profileImgUrl }"></c:set>
	                <c:if test="${!fn:startsWith(img, 'http')}">
		                <img
		                  class="profile_img"
		                  id="profile_img"
		                  alt="profile"
		                  src="img/profile_img/${loginMember.profileImgUrl }"
		                />
	                </c:if>
	                <c:if test="${fn:startsWith(img, 'http')}">
		                <img
		                  class="profile_img"
		                  id="profile_img"
		                  alt="profile"
		                  src="${loginMember.profileImgUrl }"
		                />
	                </c:if>
	                <div class="filebox">
					  <label for="ex_file">업로드</label>
					  <input type="file" id="ex_file" name="ex_file" accept="image/png, image/jpg, image/jpeg" onchange="readURL(this);"> 
					</div>
	                <button type="submit" class="btn_profile">프로필수정</button>
	              </td>
	            </tr>
	            <tr>
	            </tr>
	            <tr></tr>
	            <tr>
	              <td>내프로필</td>
	            </tr>
	            <tr>
	              <td>보안설정</td>
	            </tr>
	            <tr>
	              <td>이력관리</td>
	            </tr>
	            <tr>
	              <td>
	                <input
	                  type="button"
	                  id="btn_delete"
	                  class="btn_delete"
	                  value="회원탈퇴"
	                />
	              </td>
	            </tr>
	          </table>
          </form>
        </div>
        <div class="content_mypage">
          <div class="info_mypage">
            <table class="table_mypage">
              <tr>
                <td colspan="3">내 프로필</td>
              </tr>
              <tr>
                <td>아이디</td>
                <td id="login_memberId">${loginMember.memberId }</td>
                <td></td>
              </tr>
              <tr>
                <td>닉네임</td>
                <td>${loginMember.nickName }</td>
                <td>
                  <button
                    type="button"
                    class="btn_modify_mypage"
                    onclick="modify_nickname()"
                  >
                    수정
                  </button>
                </td>
              </tr>
              <tr>
                <td>핸드폰</td>
                <td>${loginMember.phoneNum }</td>
                <td>
                  <button
                    type="button"
                    class="btn_modify_mypage"
                    onclick="modify_phonenum()"
                  >
                    수정
                  </button>
                </td>
              </tr>
            </table>
          </div>
          <div class="security_mypage">
            <table class="table_mypage">
              <tr>
                <td colspan="2">보안설정</td>
              </tr>
              <tr>
                <td>비밀번호</td>
                <td>
                  <button
                    type="button"
                    class="btn_modify_mypage"
                    onclick="modify_pwd()"
                  >
                    수정
                  </button>
                </td>
              </tr>
              <tr>
                <td>타지역 로그인 차단</td>
                <!-- on / off 스위치 -->
                <td>
                  <label class="switch-button">
                    <input type="checkbox" />
                    <span class="onoff-switch"></span>
                  </label>
                </td>
              </tr>
              <tr>
                <td>해외 로그인 차단</td>
                <!-- on / off 스위치 -->
                <td>
                  <label class="switch-button">
                    <input type="checkbox" />
                    <span class="onoff-switch"></span>
                  </label>
                </td>
              </tr>
            </table>
          </div>
          <div class="history_mypage">
            <table class="table_mypage">
              <tr>
                <td colspan="2">이력관리</td>
              </tr>
              <tr>
                <td>로그인 기록</td>
                <td>
                  <button
                    type="button"
                    class="btn_modify_mypage"
                    onclick="login_history()"
                  >
                    확인
                  </button>
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>

    <!-- 마이페이지 - 찜목록 -->
    <div id="container_mypage_zzims" style="display: none">
      <div class="ul_zzim_list">
        <h1>찜 목록</h1>
        <ul>
          <c:forEach var="store" items="${list }">
            <li>
              <div>
                <a
                  href="${pageContext.request.contextPath }/detailPage.do?storeName=${store.storeName}"
                >
                  <img
                    src="${pageContext.request.contextPath }/img/store_img/${store.storeImgUrl }"
                    alt="store"
                  />
                </a>
                <h3>${store.storeName }</h3>
              </div>
            </li>
          </c:forEach>
        </ul>
      </div>
    </div>

    <!-- 마이페이지 - 예약목록 -->
    <div id="container_mypage_reservationlist" style="display: none">
      <div class="container_res_list">
        <h1>나의 예약 목록</h1>
        <table class="table_res_list">
        	<thead>
	          <tr>
	            <th>점포</th>
	            <th>예약날짜</th>
	            <th>인원수</th>
	            <th>-</th>
	          </tr>
          	</thead>
          <c:forEach var="reservation" items="${reservationList }">
            <tr>
              <td>
                <a
                  href="${pageContext.request.contextPath }/detailPage.do?storeName=${reservation.storeName}"
                  >${reservation.storeName }</a
                >
              </td>
              <td>${reservation.reservationTime }</td>
              <td>${reservation.peopleNum }</td>
              <!-- question -->
              <td>
                <button
                  type="button"
                  id="${reservation.reservationId }"
                  onclick="res_del(this.id, event)"
                >
                  예약취소
                </button>
              </td>
            </tr>
          </c:forEach>
        </table>
      </div>
    </div>

    <!-- 마이페이지 - 내가 쓴 리뷰 조회 -->
    <div id="container_mypage_myreviews" style="display: none">
      <div class="container_review_list">
        <h1>내가 쓴 리뷰</h1>
        <table class="table_review_list">
	        <thead>
	          <tr>
	            <th>가게이름</th>
	            <th>내용</th>
	            <th>작성일자</th>
	            <th>별점</th>
	          </tr>
	        </thead>
          <c:forEach var="review" items="${reviews }">
            <tr>
              <td>
                <a
                  href="${pageContext.request.contextPath }/detailPage.do?storeName=${review.storeName}"
                  >${review.storeName }</a
                >
              </td>
              <td>${review.content }</td>
              <td>${review.createDate }</td>
              <td style="text-align: left">
                <c:forEach var="a" begin="1" end="${review.tasteScore }">
                  ⭐
                </c:forEach>
              </td>
            </tr>
          </c:forEach>
        </table>
      </div>
    </div>

    <script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
    // 프로필 사진 첨부파일 열어서 미리보기
	function readURL(input) {
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('profile_img').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	  } else {
	    document.getElementById('profile_img').src = "";
	  }
	}
    </script>
 
    <script type="text/javascript">
      // 마이페이지 - 사이드바 - 정보수정 클릭 이벤트
      function show_memberInfo() {
        // 정보수정 내용만 보여주고 다른 내용 숨기기
        //console.log("minfo");
        if ($("#container_mypage_info_update").css("display") == "none") {
          $("#container_mypage_info_update").show();
          $("#container_mypage_zzims").hide();
          $("#container_mypage_reservationlist").hide();
          $("#container_mypage_myreviews").hide();
        }
      }

      // 마이페이지 - 사이드바 - 찜한 가게 클릭 이벤트
      function show_zzim_list() {
        //console.log("zzim");
        if ($("#container_mypage_zzims").css("display") == "none") {
          $("#container_mypage_info_update").hide();
          $("#container_mypage_zzims").show();
          $("#container_mypage_reservationlist").hide();
          $("#container_mypage_myreviews").hide();
        }
      }

      // 마이페이지 - 사이드바 - 예약 목록 클릭 이벤트
      function show_reservationlist() {
        //console.log("reserv");
        if ($("#container_mypage_reservationlist").css("display") == "none") {
          $("#container_mypage_info_update").hide();
          $("#container_mypage_zzims").hide();
          $("#container_mypage_reservationlist").show();
          $("#container_mypage_myreviews").hide();
        }
      }

      // 마이페이지 - 사이드바 - 내가 쓴 리뷰 클릭 이벤트
      function show_myreviews() {
        //console.log("reserv");
        if ($("#container_mypage_myreviews").css("display") == "none") {
          $("#container_mypage_info_update").hide();
          $("#container_mypage_zzims").hide();
          $("#container_mypage_reservationlist").hide();
          $("#container_mypage_myreviews").show();
        }
      }

      // 예약 취소
      // 버튼 onclick 이용하여 this.id 로 해당 버튼의 id 를 파라미터로 사용
      function res_del(res_id, e) {
        console.log(res_id); // --> button 의 아이디 값

        let deleteStatus = function () {
          if (confirm("정말 취소하시겠습니까?") == true) {
            //확인
            return 1;
          } else {
            //취소
            return 0; // function 종료
          }
        };

        if (deleteStatus() == 1) {
          $.ajax({
            type: "POST",

            url: "reservationDelete.do",

            data: {
              id: res_id,
            },

            dataType: "text",

            success: function (data, textStatus, xhr) {
              if (data == "deleteSuccess") {
                alert("삭제 완료");
                // 삭제한 예약내역 시각적으로 사라지게 하기 -> 디비 업데이트 후 재조회하는 방법을 찾아야함..
                e.target.parentElement.parentElement.remove();
              } else {
                window.location.href = "main.jsp";
              }
            },

            error: function (request, status, error) {
              alert("code:" + request.status + "\n" + "error:" + error);
            },
          });
        }
      }

      // === 모달 팝업 ===
      let myModal_1 = document.getElementById("modal_wrap_1");
      let myModal_2 = document.getElementById("modal_wrap_2");
      let myModal_3 = document.getElementById("modal_wrap_3");
      // 닉네임 수정창 팝업
      function modify_nickname() {
        // if ($(".popup_modify_nickname").css("display") == "none") {
        //   // $(".modal_wrqp").show();
        //   $(".popup_modify_nickname").show();
        //   $("#new_nickname").focus();
        // }
        myModal_1.style.display = "block";
        $("#new_nickname").focus();
      }

      // 전화번호 수정창 팝업
      function modify_phonenum() {
        // if ($(".popup_modify_phonenum").css("display") == "none") {
        //   $(".popup_modify_phonenum").show();
        //   $("#new_phonenum").focus();
        // }
        myModal_2.style.display = "block";
        $("#new_phonenum").focus();
      }

      // 비밀번호 수정창 팝업
      function modify_pwd() {
        // if ($(".popup_modify_pwd").css("display") == "none") {
        //   $(".popup_modify_pwd").show();
        //   $("#pre_pwd").focus();
        // }
        myModal_3.style.display = "block";
        $("#pre_pwd").focus();
      }

      // 팝업창 취소 버튼 클릭시 숨기기
      function cancle_update() {
        myModal_1.style.display = "none";
        myModal_2.style.display = "none";
        myModal_3.style.display = "none";
        // if ($(".popup_modify_nickname").css("display") != "none") {
        //   $(".popup_modify_nickname").hide();
        //   $("#new_nickname").val("");
        // }
        // if ($(".popup_modify_phonenum").css("display") != "none") {
        //   $(".popup_modify_phonenum").hide();
        //   $("#new_phonenum").val("");
        // }
        // if ($(".popup_modify_pwd").css("display") != "none") {
        //   $(".popup_modify_pwd").hide();
        //   $("#pre_pwd").val("");
        //   $("#new_pwd").val("");
        //   $("#new_pwd_check").val("");
        // }
      }

      // 닉네임 수정
      function update_nickname() {
        //let new_nickname = document.getElementById('new_nickname').value;
        let new_nickname = $("#new_nickname").val();
        console.log(new_nickname);

        if (new_nickname != "") {
          $.ajax({
            type: "POST",

            url: "memberUpdate.do",

            data: {
              nn: new_nickname,
            },

            dataType: "text",

            success: function (data) {
              if (data == "modifySuccess") {
                alert("닉네임 수정이 완료되었습니다");
                $(".popup_modify_nickname").hide();
                location.reload(true);
              } else {
                alert("닉네임 수정에 실패하였습니다.");
              }
            },

            error: function (request, status, error) {
              alert("code:" + request.status + "\n" + "error:" + error);
            },
          });
        } else {
          alert("새로운 닉네임을 입력하세요.");
          $("#new_nickname").focus();
          return;
        }
      }

      // 전화번호 수정
      function update_phonenum() {
        let new_phonenum = $("#new_phonenum").val();

        if (new_phonenum != "") {
          $.ajax({
            type: "POST",

            url: "memberUpdate.do",

            data: {
              ph: new_phonenum,
            },

            dataType: "text",

            success: function (data) {
              if (data == "modifySuccess") {
                alert("전화번호 수정이 완료되었습니다");
                location.reload(true);
              } else {
                alert("전화번호 수정에 실패하였습니다.");
              }
            },

            error: function (request, status, error) {
              alert("code:" + request.status + "\n" + "error:" + error);
            },
          });
        } else {
          alert("새로운 전화번호를 입력하세요.");
          $("#new_phonenum").focus();
          return;
        }
      }

      // 비밀번호 수정
      function update_pwd() {
        let new_pwd = $("#new_pwd").val();

        if (new_pwd != "" && pwd_check()) {
          $.ajax({
            type: "POST",

            url: "memberUpdate.do",

            data: {
              pwd: new_pwd,
            },

            dataType: "text",

            success: function (data, textStatus, xhr) {
              if (data == "modifySuccess") {
                alert("비밀번호 수정이 완료되었습니다");
                location.reload(true);
              } else {
                alert("비밀번호 수정에 실패하였습니다.");
                location.reload(true);
              }
            },

            error: function (request, status, error) {
              alert("code:" + request.status + "\n" + "error:" + error);
            },
          });
        } else if (new_pwd == "") {
          alert("새로운 비밀번호를 입력하세요.");
          $("#pre_pwd").val("");
          $("#new_pwd").val("");
          $("#new_pwd_check").val("");
          $("#pre_pwd").focus();
          return;
        }
      }

      // 비밀번호 체크
      function pwd_check() {
        let pre_pwd = $("#pre_pwd").val();
        let login_pwd = $("#login_pwd").val();
        let new_pwd = $("#new_pwd").val();
        let new_pwd_check = $("#new_pwd_check").val();

        if (pre_pwd != login_pwd) {
          alert("비밀번호가 일치하지 않습니다.");
          $("#pre_pwd").val("");
          $("#new_pwd").val("");
          $("#new_pwd_check").val("");
          $("#pre_pwd").focus();
          return false;
        }

        if (new_pwd != new_pwd_check) {
          alert("새로운 비밀번호를 다시 확인하십시오");
          $("#pre_pwd").val("");
          $("#new_pwd").val("");
          $("#new_pwd_check").val("");
          $("#pre_pwd").focus();
          return false;
        }
        return true;
      }

      // 회원 탈퇴
      $("#btn_delete").click(function () {
        // 제이쿼리로 식별자의 텍스트인 로그인 아이디를 가져옴
        let login_memberId = $("#login_memberId").text();

        let deleteStatus = function () {
          if (confirm("정말 탈퇴하시겠습니까?") == true) {
            //확인
            return 1;
          } else {
            //취소
            return 0;
          }
        };

        if (deleteStatus() == 1) {
          $.ajax({
            type: "POST",

            url: "memberDelete.do",

            data: {
              id: login_memberId,
            },

            dataType: "text",

            success: function (data, textStatus, xhr) {
              if (data == "deleteSuccess") {
                alert("탈퇴 완료");
                window.location.href = "main.do";
              } else {
                window.location.href = "main.do";
              }
            },

            error: function (request, status, error) {
              alert("code:" + request.status + "\n" + "error:" + error);
            },
          });
        }
      });
    </script>
  </body>
</html>