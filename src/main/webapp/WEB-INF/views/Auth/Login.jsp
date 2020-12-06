<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="contact-area section-padding-100">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-8 col-xl-9">
				<div class="contact-content mb-100">
					<div class="contact-form-area mb-70">
						<c:if test="${param.NotLogin == 'error' }">
							<div class="alert alert-danger alert-dismissible">
								<button type="button" class="close" data-dismiss="alert">
									<span>&times;</span>
								</button>
								아이디나 비밀번호를 확인해주세요.
							</div>
						</c:if>
						<h4 class="mb-50">로그인</h4>
						<form action="<c:url value='/Auth/LoginProcess.do'/>" method="post">
							<div class="row">
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
								<div class="col-lg-4"></div>
								<div class="col-offset-8 col-4">
									<button class="btn bueno-btn mt-30" type="submit">로그인</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	$('#close').click(function(){
		$('#alert').empty();
	});
</script>