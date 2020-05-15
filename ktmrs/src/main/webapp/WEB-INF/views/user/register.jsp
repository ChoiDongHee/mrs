<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>

<!-- footer.jsp 파일의 내용을 가져와서 삽입 -->
<%@include file="../include/mrs_header.jsp"%>
<style>
.display-none{ display: none }
.invisible{ visibility: hidden }
</style>
<script>

// (2) 위에서 설정한 imgImp의 내용이 변경되면 실행항 함수 만들기
function readURL(input) {
	// 파일을 선택 했다면 
	if (input.files && input.files[0]) {
		// 파일의 이름 가져오기
		var filename = input.files[0].name;
		// 파일 이름 중 뒤에서 3글자 가져오기
		var ext = filename.substr(filename.length - 3, filename.length);
		// 가져온 파일 이름 뒤 3글자로 확장자가 그림파일인지 확인
		if (ext.toLowerCase() == 'jpeg'  ||ext.toLowerCase() == 'jpg' || ext.toLowerCase() == 'gif'
				|| ext.toLowerCase() == 'png') {
			// 그림 파일의 확장자가 맞는 경우
			// 파일의 내용을 읽어서 id가 image인 img 태그에 출력
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#image').attr('src', e.target.result);

			}
			// 선택한 파일을 읽기
			reader.readAsDataURL(input.files[0]);

		} else {
			// 그림 파일이 아닌 경우
			alert("이미지 파일만 등록 가능합니다(확장자 - jpg, gif, png)");
			return;
		}
	}
}

	function check() {
		// 아이디가 중복된 상태에서 회원 가입 버튼을 누르면 다음페이지로 넘어갈 수 없도록! 
		// id가 idCheck인 객체의 value값이 false이면 아이디 중복상태
		if ($('#idCheck').val() == 'false') {
			alert("아이디를 확인해주세요");
			$('#idDiv').html('이미 사용 중인 아이디입니다.');
			$('#idDiv').css('color', 'red');
			return false; // 다음 페이지로 넘어갈 수 없도록 설정 

		}

	}
	</script>
	
 <div class="wrapper">
    <section class="section section-shaped section-lg">
      <div class="shape shape-style-1 bg-gradient-default">
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
        <span></span>
      </div>
      <div class="container pt-lg-2">
        <div class="row justify-content-center">
          <div class="col-lg-10">
            <div class="card bg-secondary shadow border-0">
              <div class="card-header bg-white pb-5">
                <div class="text-muted text-center mb-3"><small>Sign up with</small></div>
               
              </div>
              <div class="card-body px-lg-5 py-lg-5">
                <div class="text-center text-muted mb-4">
                  <small>Or sign up with credentials</small>
                </div>
                <form id="joinform" enctype="multipart/form-data" method="post"	onsubmit="return check()">
                  <div class="form-group">
                    <div class="input-group input-group-alternative mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                      </div>
                      <input class="form-control" placeholder="Name" size="10" maxlength="30" pattern="([a-z,A-Z,가-힣]){2,}"
										required="required type="text">
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="input-group input-group-alternative mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-hat-3"></i></span>
                      </div>
                      <input class="form-control" placeholder="image" type="file">
                    </div>
                  </div>
                 <div class="form-group focused">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input class="form-control" placeholder="Phone Number" type="text">
                    </div>
                  </div>
                  
                  <div class="form-group">
                    <div class="input-group input-group-alternative mb-3">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                      </div>
                      <input class="form-control" placeholder="Email" type="email">
                    </div>
                  </div>
                  <div class="form-group focused">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input class="form-control" placeholder="Password" type="password">
                    </div>
                  </div>
                  <div class="form-group focused">
                    <div class="input-group input-group-alternative">
                      <div class="input-group-prepend">
                        <span class="input-group-text"><i class="ni ni-lock-circle-open"></i></span>
                      </div>
                      <input class="form-control" placeholder="Verify Password" type="password">
                    </div>
                  </div>
                  
                  <div class="text-muted font-italic" style="display:none">
                  	<small>password strength: <span class="text-success font-weight-700">strong</span></small>
                  </div>
                 
                 
                  <div class="row my-4">
                    <div class="col-12">
                      <div class="custom-control custom-control-alternative custom-checkbox">
                        <input class="custom-control-input" id="customCheckRegister" type="checkbox">
                        <label class="custom-control-label" for="customCheckRegister"><span>I agree with the <a href="#">Privacy Policy</a></span></label>
                      </div>
                    </div>
                  </div>
                  <div class="text-center">
                    <button type="button" class="btn btn-primary mt-4">Create account</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>


<!-- footer.jsp 파일의 내용을 가져와서 삽입 -->
<%@include file="../include/mrs_footer.jsp"%>

