<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="css/detail/detailStyle.css?after">
</head>

<body>
  <div id="detail_container">
    <!-- 디테일 부분 -->
    <div id="detailImg">
      <c:forEach var="img" items="${storeDetail.storeImgUrl }">
        <img src="img/store_img/${img }" width="331" height="331"></img>
      </c:forEach>
    </div>

    <!-- 스토어 정보 -->
    <div id="storeInfo">
      <div class="storeLine">
        <span class="storeName">${storeDetail.storeName }</span>
        <span class="score">${storeDetail.score }</span>
        <!-- <h3>찜하기</h3> -->
        <span id="jjim">
          <c:if test="${not empty loginMember.memberId }">
            <c:if test="${empty likeOrUnlike }">
              <button id="like" value="1" class="like" style="display: none" onclick="hideHeart()">❤️</button>
              <button id="unlike" value="0" class="like" onclick="showHeart()">
                🤍</button>
            </c:if>
            <c:if test="${not empty likeOrUnlike }">
              <button id="like" value="1" class="like" onclick="hideHeart()">
                ❤️</button>
              <button id="unlike" value="0" class="like" style="display: none" onclick="showHeart()">🤍</button>
            </c:if>
          </c:if>
          <c:if test="${empty loginMember.memberId}">
            <button onclick="loginForm()">
              <img src="img/unlike.png" width="25" height="25">
            </button>
          </c:if>
        </span>
      </div>

      <table>
        <tr>
          <td>주소</td>
          <td>${storeDetail.storeAddress }</td>
        </tr>
        <tr>
          <td>전화번호</td>
          <td>${storeDetail.telephone }</td>
        </tr>
        <tr>
          <td>이용 시간</td>
          <td>${storeDetail.availableTime }</td>
        </tr>
        <tr>
          <td>음식 종류</td>
          <td>${storeDetail.foodCategory }</td>
        </tr>
        <tr>
          <td>대표메뉴</td>
          <td>
            <c:forEach var="menu" items="${storeDetail.representMenu }">
              ${menu }<br>
            </c:forEach>
          </td>
        </tr>
        <tr>
          <td colspan='2'>
          	    <!-- 카카오 지도 api script -->
          	    <div id="map" style="width:100%;height:350px;z-index:1;"></div>
        		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d8c22a90f6a47f584d63cb9b20ce8077&libraries=services"></script>
				<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  
				
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch('${storeDetail.storeAddress }', function(result, status) {
				
				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK) {
				
				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
				
				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });
				
				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new kakao.maps.InfoWindow({
				            content: '<div style="width:150px;text-align:center;padding:6px 0;">${storeDetail.storeName }</div>'
				        });
				        infowindow.open(map, marker);
				
				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				});    
				</script>

          </td>
        </tr>
      </table>
    </div>

<!-- 예약 부분 -->
      <div id="reservationForm">
        <h3>${storeDetail.storeName } 예약 하기</h3>
            <input id="storeName" type="hidden" name="storeName"
              value="${storeDetail.storeName }">
            <div class="numberPeople">
              <label for="peopleNum">
              인원</label> 
              <select id="peopleNum" name="peopleNum">
                <option value="">-</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
              </select>
            </div>
   
          <div class="reservationDate">
            <span>예약 날짜</span>
            <input type="date" name="date" id="date" placeholder="Year-Month-Day">
          </div>
          <div class="time">
            <label for="timeZone">예약 시간</label>
            <select id="timeZone" name="timeZone">
              <optgroup label="DayTime">
                <option value="">-</option>
                <option value="11:00 ~ 13:00">11:00 ~ 01:00</option>
                <option value="13:00 ~ 15:00">01:00 ~ 03:00</option>
                <option value="15:00 ~ 17:00">03:00 ~ 05:00</option>
              </optgroup>
              <optgroup label="DinnerTime">
                <option value="">-</option>
                <option value="17:00 ~ 19:00">17:00 ~ 19:00</option>
                <option value="19:00 ~ 21:00">19:00 ~ 21:00</option>
                <option value="21:00 ~ 23:00">21:00 ~ 23:00</option>
              </optgroup>
            </select>
          </div>

      <c:if test="${not empty loginMember.memberId }">
        <input type="button" value="예약 하기" id="completed_reservation" onclick="completed_reservation()">
      </c:if>

      <c:if test="${empty loginMember.memberId }">
        <input type="button" value="예약 하기" id="completed_reservation" onclick="loginForm()">
      </c:if>
    </div>


        <!-- ======= 모달창 영역 ======= -->
    <div class="modal_wrap" id="modal_wrap_1">
      <div class="modal_content">
        <table class="complete_reservation">
          <tr>
            <th colspan="4">예약이 완료되었습니다!</th>
          </tr>
          <tr>
            <td colspan="4"></td>
          </tr>
          <tr>
            <td colspan="4">예약내역</td>
          </tr>
          <tr>
            <td>예약자</td>
            <td>예약 식당</td>
            <td>예약 인원</td>
            <td>예약 날짜 및 시간</td>
          </tr>
          <!-- 내약된 내역 출력 -->
          <tr>
            <td>${reservation.memberId}</td>
            <td>${reservation.storeName}</td>
            <td>${reservation.peopleNum}</td>
            <td>${reservation.reservationTime}</td>
          </tr>
          <!-- 모달버튼 -->
          <tr>
            <!-- 디테일페이지로 되돌아가기 -->
            <td colspan="2">
              <button type="button" class="btn_reservation_sure" onclick="return_detail()">확인</button>
            </td>
            <!-- 나의 예약페이지로 -->
            <td colspan="2">
              <a href = "reservationList.do"><button type="button" class="btn_reservation_check" >예약내역 확인</button></a>
            </td>
          </tr>
        </table>
      </div>
    </div>

<!--       리뷰 폼 -->
       <div class="reviewForm">
        <div class="write_zone">
           <div class="star-rating space-x-4 mx-auto">
              <input type="radio" id="5-stars" name="rating" value="5"/>
              <label for="5-stars" class="star pr-4">★</label>
              <input type="radio" id="4-stars" name="rating" value="4"/>
              <label for="4-stars" class="star">★</label>
              <input type="radio" id="3-stars" name="rating" value="3"/>
              <label for="3-stars" class="star">★</label>
              <input type="radio" id="2-stars" name="rating" value="2"/>
              <label for="2-stars" class="star">★</label>
              <input type="radio" id="1-star" name="rating" value="1"/>
              <label for="1-star" class="star">★</label>
              </div>
          <textarea placeholder="리뷰를 작성하세요" name="content" id="content"></textarea>
          
          <input type="hidden" name="storeName" id="storeName"
            value="${storeDetail.storeName }">
    
          <c:if test="${not empty loginMember.memberId }">
            <button type="button" class="btn_review_insert"
              onclick="review_insert()">Upload</button>
          </c:if>
    
          <c:if test="${empty loginMember.memberId }">
            <button type="button" class="btn_review_insert" onclick="loginForm()">Upload</button>
          </c:if>
        </div>
      </div>
      
    
      <table id="reviewList">
      <tr class="reveiwTr">
         <th style="display: none">id</th>
         <th style="display: none">storename</th>
         <th>작성자</th>
         <th>리뷰 내용</th>
         <th>⭐</th>
         <th> 작성일 </th>
         <th></th>
      </tr>
      <c:forEach var="review" items="${list }">
         <tr class="reveiwTr">
            <td style="display: none">${review.reviewId }</td>
            <td style="display: none">${review.storeName }</td>
            <td>${review.memberId }</td>
            <td>${review.content }</td>
            <td><c:forEach var="a" begin="1" end="${review.tasteScore }">
                     ⭐
               </c:forEach></td>
            <td>${review.createDate }</td>
            <c:if test="${review.memberId eq loginMember.memberId }">
               <td>
                  <button value="삭제" onclick='deleteCallback(event)' class=delete>삭제</button>
                  <button value="수정" onclick='updateCallback(event)' class=update>수정</button>
               </td>
            </c:if>
         </tr>
      </c:forEach>
  	 </table>
  	 </div>

  
  <!-- 예약 시 날짜 선택 제한 -->
  <script type="text/javascript">
  var now_utc = Date.now()
  console.log(now_utc);
  var timeOff = new Date().getTimezoneOffset()*60000 - 86400000;
  console.log(timeOff);
  var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
  console.log(today);
  document.getElementById("date").setAttribute("min", today);
  </script>

  <script>
    function loginForm() {
      alert('로그인이 필요합니다.');
      window.location.href = "memberLoginForm.do";
    }
  </script>


  <!-- 리뷰쓰기 -->
  <script src="//code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript">
    function review_insert() {
      let storeName = $('#storeName').val();
      let content = $('#content').val();
      let rating = $('input[name=rating]:checked').val();
      //let rating = document.getElementsByClassName("class")[0].value
      console.log(storeName);
      console.log(content);
      console.log(rating);
      if (content != "") {
        $.ajax({
          type: 'POST',
          url: 'addReview.do',
          data: {
            storeName: storeName,
            content: content,
            rating: rating
          },
          dataType: 'text',
          success: function () {
            alert("리뷰작성완료");
            window.location.href = "detailPage.do?storeName=" + storeName;
          },
          error: function (error) {
            alert("error : " + error)
          },
        });
      } else {
        alert('리뷰를 작성을 완료하십시오.');
      }
    }
  </script>
  <script type="text/javascript">
    let myModal_1 = document.getElementById("modal_wrap_1");
    //리저브 클릭시  이벤트 발생
    //
    $("#completed_reservation").click(function () {
      function completed_reservation1() {
        console.log("errorrrr")
        let checkReservation = function () {
          if (confirm("예약을  완료하시겠습니까 ?  ") == true) {
            return 1;
          } else {
            return 0;
          }
          //예약
          확정시
          if (checkReservation() == 1) {
            $.ajax({
              type: "POST",
              url: "reserve.do",
              data: {
                storeName: $('#storeName').val(),
                timeZone: $('#timeZone').val(),
                date: $('#date').val(),
                time: $('#time').val(),
                peopleNum: $('#peopleNum').val(),
              },
              dataType: "text",
              //에이젝스  통신   성공시
              success: function (data,
                textStatus,
                xhr) {
                //
                if (data == "success") {
                  //예약폼  값 초기화
                  $("#timeZone").val('');
                  //  # timeZone   값  초기화
                  $("#peopleNum").val('');
                  //   #   peopleNum  값 초기화
                  $("#date").val('');
                  //  # date  값 초기화
                  //모달창  띄우기
                  $("#modal_wrap_1").css("display",'block')
                   //$(".modal_content").css("display",'block')
                   //$('#modal_wrap_1').children(0).attr('class','modal_content2')
                  //if ($("#modal_wrap_1").css("display") == "none") {
                    $("#modal_wrap_1>.modal_content").show();
                  //} else {
                  //  $("#modal_wrap_1").hide();
                 // }
                  //
                } else {
                  //
                  return;
                  //
                }
              },
              error: function (request,
                status,
                error) {
                alert("code:" + request.status + "\n" + "error:" + error);
              },
            });
          }
        }
        //모달창  띄우기    -    >    나의  예약페이지
      }
//       function check_my_reservation() {
//         window.location.href = "reviewListByMemberId.do";
//       }
      function return_detail() {
        if ($("#modal_wrap_1").css("display") == "none") {
          $("#modal_wrap_1").show();
        } else {
          $("#modal_wrap_1").hide();
        }
      }
    });
    // < !--찜하기 Ajax-- > /* 찜 */
    function showHeart() {
      $('#like').show();
      $('#unlike').hide();
      console.log("add zzim");
      $.ajax({
        type: 'POST',
        url: 'likeStoreAjax.do',
        data: {
          status: "1",
          storeName: $("#storeName").val(),
        },
        dataType: 'text',
        success: function () {
          alert("찜하기 완료");
        },
        error: function (error) {
          alert("error : " + error)
        },
      });
    }
    /* 찜취소 */
    function hideHeart() {
      $('#like').hide();
      $('#unlike').show();
      console.log("delete zzim");
      $.ajax({
        type: 'POST',
        url: 'likeStoreAjax.do',
        data: {
          status: "0",
          storeName: $('#storeName').val(),
        },
        dataType: 'text',
        success: function () {
          alert('찜하기 취소 완료')
        },
        error: function (error) {
          alert("error: " + error);
        },
      });
    }
  </script>

  <!-- 삭제 Ajax -->
  <script>
    function deleteCallback(e) {
      /* event의 call함수 (이벤트 받는 대상) */
      console.log(e.target);
      let delreviewId = e.target.parentElement.parentElement.firstElementChild.innerText;
      console.log(delreviewId);
      if (confirm('리뷰를 삭제하시겠습니까?')) {
        /* ajax의 XMLHttpRequest 형식을 사용하겠다 */
        let delAjx = new XMLHttpRequest();
        /* 보내는 방식 : post , 이동 url : deleteReviewAjax.do */
        delAjx.open('POST', 'deleteReviewAjax.do');
        /* header이름 : Content-type , header 값: application/x-www-form-urlencoded */
        delAjx.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        /* tr td의 reviewId를 보낸다 */
        delAjx.send('review_id=' + delreviewId);
        delAjx.onload = function () {
          /* 받아온 값들을 JSON언어로 사용 */
          let result = JSON.parse(delAjx.responseText);
          /* retCode : Success */
          if (result.retCode == 'Success') {
            alert('리뷰가 삭제되었습니다');
            /* 받아온 값의 부모의 부모를 지움 */
            e.target.parentElement.parentElement.remove();
          } else {
            alert('Error');
          }
        }
      } else {
      }
    }
    //  let w = window.open("about:blank","_blank"); 
    function updateCallback(e) {
      console.log(e.target);
      let upno = e.target.parentElement.parentElement.childNodes[1].innerText
      let upstore = e.target.parentElement.parentElement.childNodes[3].innerText
      let rating = e.target.parentElement.parentElement.childNodes[5].innerText
      console.log(upno)
      console.log(upstore)
      console.log(rating)
      //창 크기 지정
      var width = 500;
      var height = 500;
      //pc화면기준 가운데 정렬
      var left = (window.screen.width / 2) - (width / 2);
      var top = (window.screen.height / 4);
      //윈도우 속성 지정
      var windowStatus = 'width=' + width + ', height=' + height + ', left=' + left + ', top=' + top +
        ', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
      //연결하고싶은url
      const url = "updatereviewform.do?upno=" + upno + "&upstore=" + upstore + "&rating=" + rating;
      //등록된 url 및 window 속성 기준으로 팝업창을 연다.
      window.open(url, "popup", windowStatus);
    }
    
    
    function completed_reservation() {
    	let pn = $('#peopleNum').val();
    	let date = $('#date').val();
    	let tz = $('#timeZone').val();
    	
    	console.log(pn);
    	console.log(date);
    	console.log(tz);
    	
      if (pn == "" || date == "" || tz == "") {
    	  alert("입력 정보가 부족합니다.");
    	  return
      }
      if (confirm("예약을 완료하시겠습니까?") == false) {
          alert('취소되었습니다!');
        } else {
          //예약 확정시
          $.ajax({
            type: "POST",
            url: "reserve.do",
            data: {
              storeName: $('#storeName').val(),
              timeZone: $('#timeZone').val(),
              date: $('input[name="date"]').val(),
              time: $('#time').val(),
              peopleNum: $('#peopleNum').val(),
            },
            dataType: "json",
            //에이젝스 통신 성공시
            success: function (data, textStatus, xhr) {
            console.log(data, textStatus, xhr)
              //예약폼 값 초기화
              $("#timeZone").val(''); // #timeZone 값 초기화
              $("#peopleNum").val(''); // #peopleNum 값 초기화
              $("#date").val(''); // #date 값 초기화
              //모달창 띄우기
              //if ($("#modal_wrap_1").css("display") == "none") {
                $("#modal_wrap_1").show();
                $("#modal_wrap_1 .modal_content").show();
                
                $('#modal_wrap_1').find('tr:nth-of-type(5)>td:nth-of-type(1)').text(data.memberId) // innerText = data.memberId;
                $('#modal_wrap_1').find('tr:nth-of-type(5)>td:nth-of-type(2)').text(data.storeName)
                $('#modal_wrap_1').find('tr:nth-of-type(5)>td:nth-of-type(3)').text(data.peopleNum)
                $('#modal_wrap_1').find('tr:nth-of-type(5)>td:nth-of-type(4)').text(data.reservationTime)
            },
            error: function (request, status, error) {
            alert("code:" + request.status + "\n" + "error:" + error);
               },
             });
           }
         }
      
       //---------------------------모달창 확인버튼 클릭시 실행될 이벤트 속성값
        function return_detail() {
           $("#modal_wrap_1").hide()
        }
  </script>


      <script>
          /* let w = window.open("about:blank","_blank"); */
          
          function updateCallback(e){
             console.log(e.target);
             let upno = e.target.parentElement.parentElement.childNodes[1].innerText
             let upstore = e.target.parentElement.parentElement.childNodes[3].innerText
             let rating = e.target.parentElement.parentElement.childNodes[5].innerText
             console.log(upno)
             console.log(upstore)
             console.log(rating)
             
             //창 크기 지정
             var width = 500;
             var height = 300;
             
             //pc화면기준 가운데 정렬
             var left = (window.screen.width / 2) - (width/2);
             var top = (window.screen.height / 4);
             
                 //윈도우 속성 지정
             var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
             
                 //연결하고싶은url
                const url = "updatereviewform.do?upno="+upno+"&upstore="+upstore+"&rating="+rating;
    
             //등록된 url 및 window 속성 기준으로 팝업창을 연다.
             window.open(url, "popup", windowStatus);      
          }
          </script>
    </body>
    </html>