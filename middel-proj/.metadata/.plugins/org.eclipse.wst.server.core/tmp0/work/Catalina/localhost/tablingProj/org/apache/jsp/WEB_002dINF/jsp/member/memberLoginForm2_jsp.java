/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.65
 * Generated at: 2022-10-10 17:15:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.member;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class memberLoginForm2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/css/member/memberLoginForm2.css?after\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css\"/>\r\n");
      out.write("</head>\r\n");
      out.write("    \r\n");
      out.write("  <body>\r\n");
      out.write("    <!-- modal popup -->\r\n");
      out.write("    <!-- 비밀번호 찾기 -->\r\n");
      out.write("    <div class=\"modal_wrap\" id=\"modal_wrap\">\r\n");
      out.write("      <div class=\"popup_find_pwd\">\r\n");
      out.write("        <table class=\"table_find_pwd\">\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td colspan=\"2\">비밀번호 찾기</td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td class=\"find_new_pwd_label\">아이디</td>\r\n");
      out.write("            <td>\r\n");
      out.write("              <input type=\"text\" id=\"id_for_find_pwd\" class=\"input_modify\" />\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td class=\"find_new_pwd_label\">전화번호</td>\r\n");
      out.write("            <td>\r\n");
      out.write("              <input type=\"text\" id=\"ph_for_find_pwd\" class=\"input_modify\" />\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td colspan=\"2\">\r\n");
      out.write("              <span id=\"find_new_pwd\"></span>\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td colspan=\"2\">\r\n");
      out.write("              <button\r\n");
      out.write("                type=\"button\"\r\n");
      out.write("                class=\"btn_popup_cancle\"\r\n");
      out.write("                onclick=\"cancle_find_pwd()\"\r\n");
      out.write("              >\r\n");
      out.write("                닫기\r\n");
      out.write("              </button>\r\n");
      out.write("              <button type=\"button\" class=\"btn_popup_sure\" onclick=\"find_pwd()\">\r\n");
      out.write("                찾기\r\n");
      out.write("              </button>\r\n");
      out.write("            </td>\r\n");
      out.write("          </tr>\r\n");
      out.write("        </table>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"container\" id=\"container\">\r\n");
      out.write("      <!-- 회원가입 폼 -->\r\n");
      out.write("      <div class=\"form-container sign-up-container\">\r\n");
      out.write("        <form action=\"memberInsert.do\" method=\"post\" id=\"frm\">\r\n");
      out.write("          <h1>Create Account</h1>\r\n");
      out.write("          <div class=\"social-container\">\r\n");
      out.write("            <a href=\"https://www.facebook.com\" class=\"social\" target=\"_blank\"\r\n");
      out.write("              ><i class=\"fab fa-facebook-f\"></i\r\n");
      out.write("            ></a>\r\n");
      out.write("            <a href=\"http://www.google.com\" class=\"social\" target=\"_blank\"\r\n");
      out.write("              ><i class=\"fab fa-google-plus-g\"></i\r\n");
      out.write("            ></a>\r\n");
      out.write("            <a href=\"https://www.instagram.com/\" class=\"social\" target=\"_blank\"\r\n");
      out.write("              ><i class=\"fab fa-linkedin-in\"></i\r\n");
      out.write("            ></a>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- 아이디 입력 -->\r\n");
      out.write("          <span>or use your email for registration</span>\r\n");
      out.write("          <div class=\"dupl_check\">\r\n");
      out.write("            <input\r\n");
      out.write("              type=\"text\"\r\n");
      out.write("              name=\"reg_id\"\r\n");
      out.write("              id=\"reg_id\"\r\n");
      out.write("              autocomplete=\"off\"\r\n");
      out.write("              placeholder=\"아이디\"\r\n");
      out.write("            />\r\n");
      out.write("            <!-- 중복 체크 -->\r\n");
      out.write("            <button\r\n");
      out.write("              type=\"button\"\r\n");
      out.write("              class=\"btn_id_check\"\r\n");
      out.write("              id=\"btn_id_check\"\r\n");
      out.write("              name=\"btn_id_check\"\r\n");
      out.write("              value=\"unchecked\"\r\n");
      out.write("            >\r\n");
      out.write("              중복체크\r\n");
      out.write("            </button>\r\n");
      out.write("          </div>\r\n");
      out.write("          <span id=\"result\" class=\"span_dupl_chek\"></span>\r\n");
      out.write("          <!-- 비밀번호 입력 -->\r\n");
      out.write("          <input\r\n");
      out.write("            type=\"password\"\r\n");
      out.write("            name=\"reg_pwd\"\r\n");
      out.write("            id=\"reg_pwd\"\r\n");
      out.write("            autocomplete=\"off\"\r\n");
      out.write("            placeholder=\"비밀번호\"\r\n");
      out.write("          />\r\n");
      out.write("          <!-- 비밀번호 확인 입력 -->\r\n");
      out.write("          <input\r\n");
      out.write("            type=\"password\"\r\n");
      out.write("            name=\"reg_pwd_check\"\r\n");
      out.write("            id=\"reg_pwd_check\"\r\n");
      out.write("            autocomplete=\"off\"\r\n");
      out.write("            placeholder=\"비밀번호 확인\"\r\n");
      out.write("          />\r\n");
      out.write("          <!-- 닉네임 입력 -->\r\n");
      out.write("          <input\r\n");
      out.write("            type=\"text\"\r\n");
      out.write("            name=\"reg_nickname\"\r\n");
      out.write("            id=\"reg_nickname\"\r\n");
      out.write("            autocomplete=\"off\"\r\n");
      out.write("            placeholder=\"닉네임\"\r\n");
      out.write("          />\r\n");
      out.write("          <!-- 전화번호 입력 -->\r\n");
      out.write("          <input\r\n");
      out.write("            type=\"text\"\r\n");
      out.write("            name=\"reg_phone\"\r\n");
      out.write("            id=\"reg_phone\"\r\n");
      out.write("            autocomplete=\"off\"\r\n");
      out.write("            placeholder=\"전화번호\"\r\n");
      out.write("          />\r\n");
      out.write("          <!-- 역할 드롭박스 -->\r\n");
      out.write("          <div class=\"select-style\">\r\n");
      out.write("            <select name=\"reg_role\">\r\n");
      out.write("              <option value=\"1\">사장님</option>\r\n");
      out.write("              <option value=\"2\">손님</option>\r\n");
      out.write("            </select>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- 회원가입 버튼 -->\r\n");
      out.write("          <button type=\"button\" onclick=\"formCheck()\">회원가입</button>\r\n");
      out.write("        </form>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- 회원가입 폼 끝 -->\r\n");
      out.write("\r\n");
      out.write("      <!-- 로그인 폼 -->\r\n");
      out.write("      <div class=\"form-container sign-in-container\">\r\n");
      out.write("        <form action=\"#\">\r\n");
      out.write("          <h1>Sign in</h1>\r\n");
      out.write("          <div class=\"social-container\">\r\n");
      out.write("            <a href=\"https://www.facebook.com\" class=\"social\" target=\"_blank\"\r\n");
      out.write("              ><i class=\"fab fa-facebook-f\"></i\r\n");
      out.write("            ></a>\r\n");
      out.write("            <a href=\"http://www.google.com\" class=\"social\" target=\"_blank\"\r\n");
      out.write("              ><i class=\"fab fa-google-plus-g\"></i\r\n");
      out.write("            ></a>\r\n");
      out.write("            <a href=\"https://www.instagram.com/\" class=\"social\" target=\"_blank\"\r\n");
      out.write("              ><i class=\"fab fa-linkedin-in\"></i\r\n");
      out.write("            ></a>\r\n");
      out.write("         \r\n");
      out.write("          </div>\r\n");
      out.write("          <span>or use your account</span>\r\n");
      out.write("          <input\r\n");
      out.write("            type=\"text\"\r\n");
      out.write("            name=\"log_id\"\r\n");
      out.write("            id=\"log_id\"\r\n");
      out.write("            autocomplete=\"off\"\r\n");
      out.write("            placeholder=\"아이디\"\r\n");
      out.write("          />\r\n");
      out.write("          <input\r\n");
      out.write("            type=\"password\"\r\n");
      out.write("            name=\"log_pwd\"\r\n");
      out.write("            id=\"log_pwd\"\r\n");
      out.write("            autocomplete=\"off\"\r\n");
      out.write("            placeholder=\"비밀번호\"\r\n");
      out.write("            onkeyup=\"enterkey2()\"\r\n");
      out.write("          />\r\n");
      out.write("          <a href=\"#\" class=\"link\" onclick=\"solveForgotPwd()\"\r\n");
      out.write("            >비밀번호를 잊으셨나요?</a\r\n");
      out.write("          >\r\n");
      out.write("          <button type=\"button\" id=\"btn_login\">로그인</button>\r\n");
      out.write("          \r\n");
      out.write("\r\n");
      out.write("	 	  <!-- 카카오 로그인 api btn -->\r\n");
      out.write("	 	  <div class=\"alert alert-danger d-none\" id=\"alert-kakao-login\" style=\"margin-top: 30px\">\r\n");
      out.write("			  <a id=\"btn-kakao-login\" href=\"\">\r\n");
      out.write("				<img src=\"//k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg\" width=\"200\" alt=\"카카오 로그인 버튼\"/>\r\n");
      out.write("			  </a>\r\n");
      out.write("		  </div>\r\n");
      out.write("        </form>\r\n");
      out.write("        \r\n");
      out.write("        <!-- 카카오 로그인 api form -->\r\n");
      out.write("         <form id=\"form-kakao-login\" method=\"post\" action=\"kakaoLogin.do\">\r\n");
      out.write("			<input type=\"hidden\" name=\"kakao_nickname\"/>\r\n");
      out.write("			<input type=\"hidden\" name=\"kakao_img\"/>\r\n");
      out.write("	  	</form>\r\n");
      out.write("      </div>\r\n");
      out.write("      <!-- 로그인 폼 끝 -->\r\n");
      out.write("\r\n");
      out.write("      <div class=\"overlay-container\">\r\n");
      out.write("        <div class=\"overlay\">\r\n");
      out.write("          <div class=\"overlay-panel overlay-left\">\r\n");
      out.write("            <h1>Welcome Back!</h1>\r\n");
      out.write("            <p>\r\n");
      out.write("              To keep connected with us please login with your personal info\r\n");
      out.write("            </p>\r\n");
      out.write("            <button class=\"ghost\" id=\"signIn\">Sign In</button>\r\n");
      out.write("          </div>\r\n");
      out.write("          <div class=\"overlay-panel overlay-right\">\r\n");
      out.write("            <h1>Hello, Friend!</h1>\r\n");
      out.write("            <p>Enter your personal details and start journey with us</p>\r\n");
      out.write("            <button class=\"ghost\" id=\"signUp\">Sign Up</button>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("	<!-- JQUERY AJAX 사용 -->\r\n");
      out.write("    <script src=\"//code.jquery.com/jquery-3.4.1.min.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("	<!-- 카카오 로그인 api script -->\r\n");
      out.write("    <script src=\"https://developers.kakao.com/sdk/js/kakao.js\"></script>\r\n");
      out.write("	<script type=\"text/javascript\">\r\n");
      out.write("	$(function(){\r\n");
      out.write("\r\n");
      out.write("		$(\"#btn-kakao-login\").click(function(event){\r\n");
      out.write("			// a태그 기능 실행멈춤.\r\n");
      out.write("			event.preventDefault();\r\n");
      out.write("			// 카카오 로그인 실행시 오류메시지를 표시하는 경고창을 화면에 보이지 않게 한다.\r\n");
      out.write("			$(\"alert-kakao-login\").addClass(\"d-none\");\r\n");
      out.write("			// 사용자 키를 전달, 카카오 로그인 서비스 초기화.\r\n");
      out.write("			window.Kakao.init('d8c22a90f6a47f584d63cb9b20ce8077');\r\n");
      out.write("			// 카카오 로그인 서비스 실행하기 및 사용자 정보 가져오기.\r\n");
      out.write("			Kakao.Auth.login({\r\n");
      out.write("				success:function(auth){\r\n");
      out.write("					Kakao.API.request({\r\n");
      out.write("						// 카카오 사용자 정보 url\r\n");
      out.write("						url: '/v2/user/me',\r\n");
      out.write("						success: function(response){\r\n");
      out.write("							// 사용자 정보를 가져와서 폼에 추가.\r\n");
      out.write("							var account = response.kakao_account;\r\n");
      out.write("							console.log(account);\r\n");
      out.write("							\r\n");
      out.write("							$('#form-kakao-login input[name=kakao_nickname]').val(account.profile.nickname);\r\n");
      out.write("							$('#form-kakao-login input[name=kakao_img]').val(account.profile.thumbnail_image_url);\r\n");
      out.write("							// 사용자 정보가 포함된 폼을 서버로 제출한다.\r\n");
      out.write("							document.querySelector('#form-kakao-login').submit();\r\n");
      out.write("						},\r\n");
      out.write("						fail: function(error){\r\n");
      out.write("							// 경고창에 에러메시지 표시\r\n");
      out.write("							$('alert-kakao-login').removeClass(\"d-none\").text(\"카카오 로그인 처리 중 오류가 발생했습니다.\")\r\n");
      out.write("						}\r\n");
      out.write("					}); // api request\r\n");
      out.write("				}, // success 결과.\r\n");
      out.write("				fail:function(error){\r\n");
      out.write("					// 경고창에 에러메시지 표시\r\n");
      out.write("					$('alert-kakao-login').removeClass(\"d-none\").text(\"카카오 로그인 처리 중 오류가 발생했습니다.\")\r\n");
      out.write("				}\r\n");
      out.write("			}); // 로그인 인증.\r\n");
      out.write("		}) // 클릭이벤트\r\n");
      out.write("	})// 카카오로그인 끝.\r\n");
      out.write("	</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("      const signUpButton = document.getElementById(\"signUp\");\r\n");
      out.write("      const signInButton = document.getElementById(\"signIn\");\r\n");
      out.write("      const container = document.getElementById(\"container\");\r\n");
      out.write("\r\n");
      out.write("      signUpButton.addEventListener(\"click\", () => {\r\n");
      out.write("        container.classList.add(\"right-panel-active\");\r\n");
      out.write("      });\r\n");
      out.write("\r\n");
      out.write("      signInButton.addEventListener(\"click\", () => {\r\n");
      out.write("        container.classList.remove(\"right-panel-active\");\r\n");
      out.write("      });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <!-- 비밀번호 찾기 -->\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("      let myModal = document.getElementById(\"modal_wrap\");\r\n");
      out.write("      //팝업창\r\n");
      out.write("      function solveForgotPwd() {\r\n");
      out.write("        //console.log('비밀번호좀 찾자;;');\r\n");
      out.write("        myModal.style.display = \"block\";\r\n");
      out.write("        $(\"#id_for_find_pwd\").focus();\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      // 비밀번호 찾기 팝업 닫기\r\n");
      out.write("      function cancle_find_pwd() {\r\n");
      out.write("        myModal.style.display = \"none\";\r\n");
      out.write("      }\r\n");
      out.write("\r\n");
      out.write("      // 비밀번호 찾기\r\n");
      out.write("      function find_pwd() {\r\n");
      out.write("        let id = $(\"#id_for_find_pwd\").val();\r\n");
      out.write("        let ph = $(\"#ph_for_find_pwd\").val();\r\n");
      out.write("        console.log(id);\r\n");
      out.write("        console.log(ph);\r\n");
      out.write("\r\n");
      out.write("        if (id != \"\" || ph != \"\") {\r\n");
      out.write("          $.ajax({\r\n");
      out.write("            type: \"post\",\r\n");
      out.write("\r\n");
      out.write("            url: \"memberFindPwd.do\",\r\n");
      out.write("\r\n");
      out.write("            data: {\r\n");
      out.write("              id: id,\r\n");
      out.write("              ph: ph,\r\n");
      out.write("            },\r\n");
      out.write("\r\n");
      out.write("            datatype: \"text\",\r\n");
      out.write("\r\n");
      out.write("            success: function (data) {\r\n");
      out.write("              if (data != \"\") {\r\n");
      out.write("                $(\"#find_new_pwd\").text(\"새로운 비밀번호 : \" + data);\r\n");
      out.write("              } else {\r\n");
      out.write("                $(\"#find_new_pwd\").text(\"해당하는 유저정보가 없습니다\");\r\n");
      out.write("              }\r\n");
      out.write("            },\r\n");
      out.write("          });\r\n");
      out.write("        } else {\r\n");
      out.write("          alert(\"정보를 입력하세요\");\r\n");
      out.write("        }\r\n");
      out.write("      }\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <!-- 중복체크 AJAX  -->\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("      $(function () {\r\n");
      out.write("        $(\"#reg_id\").change(function () {\r\n");
      out.write("          $(\"#btn_id_check\").val(\"unChecked\");\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("        $(\"#btn_id_check\").click(function () {\r\n");
      out.write("          let regId = $(\"#reg_id\").val();\r\n");
      out.write("          console.log(\"reg_id = \" + regId);\r\n");
      out.write("\r\n");
      out.write("          if (regId != \"\") {\r\n");
      out.write("            // 아이디를 서버로 전송 > DB 유효성 검사 > 결과 반환받기\r\n");
      out.write("            $.ajax({\r\n");
      out.write("              type: \"post\",\r\n");
      out.write("              // http://localhost:8081/tablingProj/jsp/member/memberLoginForm.jsp\r\n");
      out.write("              // data 를 넘겨줄 url 지정\r\n");
      out.write("              url: \"memberCheckIdDupl.do\",\r\n");
      out.write("              // 위 url 로 넘길 데이터 -> req.getParameter(\"id\") 로 받을 수 있음\r\n");
      out.write("              data: {\r\n");
      out.write("                id: regId,\r\n");
      out.write("              },\r\n");
      out.write("              dataType: \"text\",\r\n");
      out.write("              // controller 에서 resp.getWriter().write(status); 를 사용하여 'status' data 로 받음\r\n");
      out.write("              // 데이터 교환 성공 시 수행 로직\r\n");
      out.write("              success: function (data) {\r\n");
      out.write("                if (data == \"isDupl\") {\r\n");
      out.write("                  $(\"#result\").text(\"이미 사용중인 아이디입니다.\");\r\n");
      out.write("                  $(\"#reg_id\").focus();\r\n");
      out.write("                } else {\r\n");
      out.write("                  $(\"#result\").text(\"사용 가능한 아이디입니다.\");\r\n");
      out.write("                  $(\"#btn_id_check\").val(\"checked\");\r\n");
      out.write("                  $(\"#reg_pwd\").focus();\r\n");
      out.write("                }\r\n");
      out.write("              },\r\n");
      out.write("\r\n");
      out.write("              // 에러 발생 시 수행 로직\r\n");
      out.write("              error: function (error) {\r\n");
      out.write("                alert(\"error : \" + error);\r\n");
      out.write("              },\r\n");
      out.write("            });\r\n");
      out.write("          } else {\r\n");
      out.write("            alert(\"아이디를 입력하세요.\");\r\n");
      out.write("            //Swal.fire(\"아이디를 입력하세요\", \"\", \"warning\");\r\n");
      out.write("          }\r\n");
      out.write("        });\r\n");
      out.write("      });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("    <!-- 회원가입 AJAX -->\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("      function formCheck() {\r\n");
      out.write("        if (frm.reg_id.value == \"\") {\r\n");
      out.write("          alert(\"아이디를 입력하세요.\");\r\n");
      out.write("          //Swal.fire(\"\", \"아이디를 입력하세요\", \"warning\");\r\n");
      out.write("          frm.reg_id.focus();\r\n");
      out.write("          return false;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        if (frm.btn_id_check.value == \"unChecked\") {\r\n");
      out.write("          alert(\"아이디 중복체크를 하세요.\");\r\n");
      out.write("          //Swal.fire(\"\", \"아이디 중복확인이 필요합니다\", \"warning\");\r\n");
      out.write("          return false;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        if (frm.reg_pwd.value == \"\") {\r\n");
      out.write("          alert(\"비밀번호를 입력하세요.\");\r\n");
      out.write("          //Swal.fire(\"\", \"비밀번호를 입력하세요\", \"warning\");\r\n");
      out.write("          frm.reg_pwd.focus();\r\n");
      out.write("          return false;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        console.log(\"reg check : \" + reg_pwd_check.value);\r\n");
      out.write("        console.log(\"reg : \" + reg_pwd.value);\r\n");
      out.write("        if (frm.reg_pwd.value != frm.reg_pwd_check.value) {\r\n");
      out.write("          alert(\"비밀번호를 확인하세요.\");\r\n");
      out.write("          //Swal.fire(\"\", \"비밀번호를 확인하세요\", \"warning\");\r\n");
      out.write("          $(\"#reg_pwd_check\").val(\"\");\r\n");
      out.write("          frm.reg_pwd_check.focus();\r\n");
      out.write("          return false;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        alert(\"회원가입 완료!\");\r\n");
      out.write("        frm.submit();\r\n");
      out.write("        // 		Swal.fire(\"회원가입 성공!\", \"\", \"success\")\r\n");
      out.write("        // 		.then(function() {\r\n");
      out.write("        // 			frm.submit();\r\n");
      out.write("        // 		});\r\n");
      out.write("      }\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("	<!-- 엔터 입력시 로그인 -->\r\n");
      out.write("	<script type=\"text/javascript\">\r\n");
      out.write("	function enterkey2() {\r\n");
      out.write("		if (window.event.keyCode == 13) {\r\n");
      out.write("			console.log(\"r1\");\r\n");
      out.write("\r\n");
      out.write("	        $.ajax({\r\n");
      out.write("	          type: \"POST\",\r\n");
      out.write("\r\n");
      out.write("	          url: \"memberLogin.do\",\r\n");
      out.write("\r\n");
      out.write("	          data: {\r\n");
      out.write("	            id: $(\"#log_id\").val(),\r\n");
      out.write("	            pwd: $(\"#log_pwd\").val(),\r\n");
      out.write("	          },\r\n");
      out.write("\r\n");
      out.write("	          dataType: \"text\",\r\n");
      out.write("\r\n");
      out.write("	          success: function (data, textStatus, xhr) {\r\n");
      out.write("	            console.log(\"r2\");\r\n");
      out.write("	            if (data == \"loginFail\") {\r\n");
      out.write("	              alert(\"아이디, 비밀번호를 확인하세요.\");\r\n");
      out.write("	              $(\"#log_id\").val(\"\");\r\n");
      out.write("	              $(\"#log_pwd\").val(\"\");\r\n");
      out.write("	              $(\"#log_id\").focus();\r\n");
      out.write("	            } else {\r\n");
      out.write("	              alert(\"로그인 성공!\");\r\n");
      out.write("	              window.location.href = \"mainDecision.do\";\r\n");
      out.write("\r\n");
      out.write("	            }\r\n");
      out.write("	            console.log(data);\r\n");
      out.write("	          },\r\n");
      out.write("\r\n");
      out.write("	          error: function (request, status, error) {\r\n");
      out.write("	            alert(\"code:\" + request.status + \"\\n\" + \"error:\" + error);\r\n");
      out.write("	          },\r\n");
      out.write("	        });\r\n");
      out.write("		}\r\n");
      out.write("	}\r\n");
      out.write("	</script>\r\n");
      out.write("	\r\n");
      out.write("    <!-- 로그인 AJAX -->\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("      $(\"#btn_login\").click(function () {\r\n");
      out.write("        console.log(\"r1\");\r\n");
      out.write("\r\n");
      out.write("        $.ajax({\r\n");
      out.write("          type: \"POST\",\r\n");
      out.write("\r\n");
      out.write("          url: \"memberLogin.do\",\r\n");
      out.write("\r\n");
      out.write("          data: {\r\n");
      out.write("            id: $(\"#log_id\").val(),\r\n");
      out.write("            pwd: $(\"#log_pwd\").val(),\r\n");
      out.write("          },\r\n");
      out.write("\r\n");
      out.write("          dataType: \"text\",\r\n");
      out.write("\r\n");
      out.write("          success: function (data, textStatus, xhr) {\r\n");
      out.write("            console.log(\"r2\");\r\n");
      out.write("            if (data == \"loginFail\") {\r\n");
      out.write("              alert(\"아이디, 비밀번호를 확인하세요.\");\r\n");
      out.write("              $(\"#log_id\").val(\"\");\r\n");
      out.write("              $(\"#log_pwd\").val(\"\");\r\n");
      out.write("              $(\"#log_id\").focus();\r\n");
      out.write("            } else {\r\n");
      out.write("              alert(\"로그인 성공!\");\r\n");
      out.write("              window.location.href = \"mainDecision.do\";\r\n");
      out.write("\r\n");
      out.write("//               Swal.fire(\r\n");
      out.write("//                 \"로그인 성공!\",\r\n");
      out.write("//                 \"메인페이지로 이동합니다\",\r\n");
      out.write("//                 \"success\"\r\n");
      out.write("//               ).then(function () {\r\n");
      out.write("//                 window.location.href = \"mainDecision.do\";\r\n");
      out.write("//               });\r\n");
      out.write("            }\r\n");
      out.write("            console.log(data);\r\n");
      out.write("          },\r\n");
      out.write("\r\n");
      out.write("          error: function (request, status, error) {\r\n");
      out.write("            alert(\"code:\" + request.status + \"\\n\" + \"error:\" + error);\r\n");
      out.write("          },\r\n");
      out.write("        });\r\n");
      out.write("      });\r\n");
      out.write("    </script>\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
