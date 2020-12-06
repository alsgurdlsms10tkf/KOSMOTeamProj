<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="contact-area section-padding-100">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-8 col-xl-9">
				<div class="contact-content mb-100">
					<div class="contact-form-area mb-70">
						<h4 class="mb-50">회원가입</h4>
						<form action="<c:url value='/Auth/Register.do'/>" method="post">
							<div class="row">
								<div class="col-lg-8">
									<div class="form-group">
										<input type="text" class="form-control" name="username" id="username"
											placeholder="Name">
									</div>
								</div>
								<div class="col-lg-8">
									<div class="form-group">
										<input type="email" class="form-control" name="email" id="email"
											placeholder="E-mail">
									</div>
								</div>
								<div class="col-lg-8">
									<div class="form-group">
										<input type="password" class="form-control" name="password" id="password"
											placeholder="Password">
									</div>
								</div>
								<div class="col-lg-8">
									<div class="form-group">
										<input type="password" class="form-control" name="password2" id="password2"
											placeholder="Password Confirm">
									</div>
								</div>
								 <!-- Ingredients -->
								<div class="col-lg-12">
				                    <div class="ingredients">
				                        <h5>알러지</h5>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="crustacean" id="customCheck1">
				                            <label class="custom-control-label" for="customCheck1">갑각류</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="peach" id="customCheck2">
				                            <label class="custom-control-label" for="customCheck2">복숭아</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="egg" id="customCheck3">
				                            <label class="custom-control-label" for="customCheck3">달걀</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="peanut" id="customCheck4">
				                            <label class="custom-control-label" for="customCheck4">땅콩</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="wheat" id="customCheck5">
				                            <label class="custom-control-label" for="customCheck5">밀</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="fish" id="customCheck6">
				                            <label class="custom-control-label" for="customCheck6">생선</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="milk" id="customCheck7">
				                            <label class="custom-control-label" for="customCheck7">우유</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="shellfish" id="customCheck8">
				                            <label class="custom-control-label" for="customCheck8">조개</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="beans" id="customCheck9">
				                            <label class="custom-control-label" for="customCheck9">콩</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="pork" id="customCheck10">
				                            <label class="custom-control-label" for="customCheck10">돼지고기</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="beaf" id="customCheck11">
				                            <label class="custom-control-label" for="customCheck11">소고기</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="chicken" id="customCheck12">
				                            <label class="custom-control-label" for="customCheck12">닭고기</label>
				                        </div>
				                        <div class="custom-control custom-checkbox cb-inline">
				                            <input type="checkbox" name="allergy" class="custom-control-input" value="tomato" id="customCheck13">
				                            <label class="custom-control-label" for="customCheck13">토마토</label>
				                        </div>
				                    </div>
				                </div>
								<div class="col-lg-12">
									<h5 class="mt-30">주소찾기</h5>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<input type="text" class="form-control" id="postcode" placeholder="우편번호">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<input type="button" class="btn bueno-btn" onclick="execDaumPostcode()" value="우편번호 찾기"><br>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<input type="text" class="form-control" id="roadAddress" name="address1" placeholder="도로명주소">
									</div>
								</div>
								<div class="col-lg-6">
									<div class="form-group">
										<input type="text" class="form-control" id="jibunAddress" name="address2" placeholder="지번주소">
									</div>
								</div>
								<span id="guide" style="color:#999;display:none"></span>
								<div class="col-lg-8">
									<div class="form-group">
										<input type="text" class="form-control" id="detailAddress" name="address3" placeholder="상세주소">
									</div>
								</div>
								<div class="col-lg-4"></div>
								<div class="col-offset-8 col-4">
									<button class="btn bueno-btn mt-30" type="submit">회원가입</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("jibunAddress").value = data.jibunAddress;

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
				