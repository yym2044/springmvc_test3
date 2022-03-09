<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!-- 추가 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link href="${path}/resources/css/style.css" rel="stylesheet"/>
<link href="${path}/resources/css/sidebars.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

</head>
<body>

<form method="post" action="infra/member/memberInst">
		<div class="container-fluid bg-light">

			<div class="row box-white pt-3 collapse show" id="firstRow">
				<div class="col-6 col-md-2">
					<img src="${path}/resources/images/xdmin/coupang.png" class="img-fluid">
				</div>
				<div class="col-6 col-md-5 fs-4 mb-2 d-md-block d-none">Coupang Management System</div>

				<!-- 
				<div class="col-12 col-md-2 fs-6 mb-2">
					<img src="${path}/resources/images/xdmin/user.png" style="width: 50px;">
					<div class="row">
							<a href="#">프로필</a>
					</div>	
				</div>
				 -->

				<div class="col-2 col-md-1 mb-2 p-0 text-end pe-2 d-md-block d-none">
					<img src="${path}/resources/images/xdmin/lee.jpg" style="width: 40px; height: 50px;" class="rounded-circle border border-5">
				</div>
				<div class="col-4 col-md mb-2 d-md-block d-none">
					<div class="row dropdown">
						<a href="#" class="link-dark text-decoration-none dropdown-toggle ps-0" data-bs-toggle="dropdown"> Yun (CEO) </a>
						<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
							<li><a class="dropdown-item" href="#">New project...</a></li>
							<li><a class="dropdown-item" href="#">Settings</a></li>
							<li><a class="dropdown-item" href="#">Profile</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Sign out</a></li>
						</ul>
					</div>
					<div class="row">Administrator</div>
				</div>

				<div class="col-3 col-md-1 mb-2 d-md-block d-none">
					<select class="form-select bg-light">
						<option>언어</option>
						<option>한국어</option>
						<option>Eng</option>
						<option>日本語</option>
					</select>
				</div>

			</div>
			<div class="row box-white collapse show" id="firstRow">
				<div class="col-10 col-md-10 fs-4 mb-2 d-md-none">Coupang Management System</div>
				<div class="col col-md text-end d-md-none"></div>
			</div>

			<!-- offcanvas start -->

			<div class="offcanvas offcanvas-start" data-bs-scroll="true" data-bs-backdrop="false" tabindex="-1"
				id="offcanvasScrolling" aria-labelledby="offcanvasScrollingLabel">

				<div class="offcanvas-header">
					<img class="bi me-2" width="120" height="30" src="${path}/resources/images/xdmin/coupang.png">
					<h3 class="offcanvas-title" id="offcanvasScrollingLabel">Admin Menu</h3>
					<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
				</div>

				<div class="offcanvas-body p-0">
					<div class="flex-shrink-0 p-3 bg-white" style="width: 280px;">
						<a href="#" class="d-flex align-items-center pb-3 mb-3 link-dark text-decoration-none border-bottom"> <span
							class="fs-5 fw-semibold">Collapsible</span>
						</a>


						<ul class="list-unstyled ps-0">
							<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#home-collapse" aria-expanded="false">Home</a>
								<div class="collapse" id="home-collapse">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">Overview</a></li>
										<li><a href="#" class="link-dark rounded">Updates</a></li>
										<li><a href="#" class="link-dark rounded">Reports</a></li>
									</ul>
								</div></li>
							<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">Dashboard</a>
								<div class="collapse" id="dashboard-collapse" style="">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">Overview</a></li>
										<li><a href="#" class="link-dark rounded">Weekly</a></li>
										<li><a href="#" class="link-dark rounded">Monthly</a></li>
										<li><a href="#" class="link-dark rounded">Annually</a></li>
									</ul>
								</div></li>
							<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#orders-collapse" aria-expanded="false">Orders</a>
								<div class="collapse" id="orders-collapse" style="">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">New</a></li>
										<li><a href="#" class="link-dark rounded">Processed</a></li>
										<li><a href="#" class="link-dark rounded">Shipped</a></li>
										<li><a href="#" class="link-dark rounded">Returned</a></li>
									</ul>
								</div></li>
							<li class="border-top my-3"></li>
							<li class="mb-1"><a href="#" class="btn btn-toggle align-items-center rounded collapsed"
								data-bs-toggle="collapse" data-bs-target="#account-collapse" aria-expanded="false">Account</a>
								<div class="collapse" id="account-collapse" style="">
									<ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
										<li><a href="#" class="link-dark rounded">New...</a></li>
										<li><a href="#" class="link-dark rounded">Profile</a></li>
										<li><a href="#" class="link-dark rounded">Settings</a></li>
										<li><a href="#" class="link-dark rounded">Sign out</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="offcanvas-footer">
					<div class="dropdown border-top ms-3 py-3">
						<a href="#" class="d-flex align-items-center link-dark text-decoration-none dropdown-toggle" id="dropdownUser2"
							data-bs-toggle="dropdown" aria-expanded="false"> <img src="${path}/resources/images/xdmin/lee.jpg" alt="" width="40"
							height="50" class="rounded-circle border border-5 me-2"> <strong>Yun</strong>
						</a>														
						<ul class="dropdown-menu text-small shadow" aria-labelledby="dropdownUser2">
							<li><a class="dropdown-item" href="#">New project...</a></li>
							<li><a class="dropdown-item" href="#">Settings</a></li>
							<li><a class="dropdown-item" href="#">Profile</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Sign out</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- offcanvas end -->



			<div class="row bg-secondary">
				<div class="col">
					<ul class="nav">
						<li class="nav-item"><a class="nav-link link-light">관리자화면</a></li>
						<li class="nav-item"><a class="nav-link link-light" href="#">Features</a></li>
						<li class="nav-item"><a class="nav-link link-light" href="#">시스템 관리</a></li>
						<li class="nav-item dropdown"><a class="nav-link link-light dropdown-toggle" href="#"
							data-bs-toggle="dropdown">Dropdown</a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">Action</a></li>
								<li><a class="dropdown-item" href="#">Another Action</a></li>
								<li><a class="dropdown-item" href="#">Something else here</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="col d-flex justify-content-end">
					<button class="btn btn-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling">
						<i class="bi bi-list"></i>
					</button>
				</div>
			</div>


			<!-- NavBar 수정할 거 -->
			<!-- 
			<div class="row d-flex align-items-center bg-secondary">
				<div class="col-md-2">
					<div class="row">
						<div class="col-md-12 fw-bold fs-4 text-center text-light" data-bs-toggle="collapse" data-bs-target="#firstRow">관리자화면</div>
					</div>
					<div class="row">
						<div class="col-md-12 text-center text-white">Administrator</div>
					</div>
				</div>
				<div class="col-md-1 p-2" style="width: 140px;">
					<button class="btn btn-lg bg-light">
						<div class="row">
							<i class="bi bi-gear"></i>
						</div>
						<div class="row">
							<span class="fs-6">환경설정</span>
						</div>
					</button>
				</div>
				<div class="col-md-1" style="width: 140px;">
					<button class="btn btn-lg bg-light">
						<div class="row">
							<i class="bi bi-people-fill"></i>
						</div>
						<div class="row">
							<span class="fs-6">회원관리</span>
						</div>
					</button>
				</div>
				<div class="col-md" style="width: 140px;">
					<button class="btn btn-lg bg-light">
						<div class="row">
							<i class="bi bi-card-list"></i>
						</div>
						<div class="row">
							<span class="fs-6">게시판관리</span>
						</div>
					</button>
				</div>
				<div class="col-md-1 d-flex justify-content-end">
					<button class="btn btn-light" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasScrolling">
						<i class="bi bi-list"></i>
					</button>
				</div>
			</div>
 			-->
			<!-- 
			<div class="row">
				<ul class="nav bg-secondary">
					<li class="nav-item"><a class="nav-link link-light" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">Features</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">시스템 관리</a></li>
					<li class="nav-item"><a class="nav-link link-light" href="#">Dropdown</a></li>
				</ul>
			</div>
			 -->
		</div>

		<div class="container-fluid bg-light py-3">

			<div class="width90">

				<h4 class="d-flex">
					<i class="bi bi-grip-vertical text-danger"></i>회원등록
				</h4>

				<nav style="-bs-breadcrumb-divider: '&gt;';" aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item fs-6"><a href="#" style="text-decoration: none;">사이트운영</a></li>
						<li class="breadcrumb-item"><a href="#" style="text-decoration: none;">회원관리</a></li>
						<li class="breadcrumb-item active" aria-current="page"><b>회원등록</b></li>
					</ol>
				</nav>

				<div class="row">
					<div class="col-12 col-sm-5">
						아이디 <input type="text" class="form-control my-2" placeholder="영문(대소문자),숫자,특수문자">
					</div>
				</div>
				<div class="row row-cols-2">
					<div class="col-12 col-sm-5 mt-3">
						비밀번호<input type="password" class="form-control my-2">
					</div>
					<div class="col-12 col-sm-5 offset-sm-2 mt-3">
						비밀번호확인<input type="password" class="form-control my-2">
					</div>
					<div class="col-12 col-sm-5 mt-3">
						이름<input type="text" class="form-control my-2">
					</div>
					<div class="col-12 col-sm-5 offset-sm-2 mt-3">
						성<input type="text" class="form-control my-2">
					</div>
					<div class="col-12 col-sm-5 mt-3">
						이름(영문)<input type="text" class="form-control my-2">
					</div>
					<div class="col-12 col-sm-5 offset-sm-2 mt-3">
						성(영문)<input type="text" class="form-control my-2">
					</div>
					<div class="col-12 col-sm-5 mt-3">
						성별<select class="form-select my-2"><option>::선택::
							<option>남
							<option>여</select>
					</div>
					<div class="col-12 col-sm-5 offset-sm-2 mt-3">
						생일<input type="date" class="form-control my-2">
					</div>
					<div class="col-12 col-sm-5 mt-3">
						Email
						<div class="input-group my-2">
							<input type="text" class="form-control">
							<div class="input-group-text">@</div>
							<select class="form-select">
								<option selected>선택</option>
								<option>naver.com</option>
								<option>gmail.com</option>
								<option>직접입력</option>
							</select>
						</div>
					</div>
					<div class="col-12 col-sm-5 offset-sm-2 mt-3">
						이메일 정보 마케팅 사용 동의 <br>
						<div class="form-check my-3">
							<input type="checkbox" class="form-check-input" id="emailMarketing"> <label class="form-check-label"
								for="emailMarketing">동의합니다.</label>
						</div>
					</div>

					<div class="col-12 col-sm-5 mt-3">
						휴대폰
						<div class="row my-2">
							<div class="col-sm-4">
								<select class="form-select">
									<option>SKT
									<option>KT
									<option>LG
								</select>
							</div>
							<div class="col-sm-2">
								<input type="text" class="form-control" placeholder="010">
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" placeholder="1234">
							</div>
							<div class="col-sm-3">
								<input type="text" class="form-control" placeholder=5678>
							</div>
						</div>
					</div>
					<div class="col-12 col-sm-5 offset-sm-2 mt-3">
						휴대폰 정보 마케팅 사용 동의 <br>
						<div class="form-check my-3">
							<input type="checkbox" class="form-check-input" id="phoneMarketing"> <label class="form-check-label"
								for="phoneMarketing">동의합니다.</label>
						</div>
					</div>


				</div>
				<div class="row">
					<div class="col-12 col-sm-5">
						핸드폰 <input class="form-control my-2" placeholder="숫자만 입력">
					</div>

					<div class="col-12 col-sm-5 offset-sm-2">
						팩스번호 <input class="form-control my-2" placeholder="숫자만 입력">
					</div>
				</div>
				<div class="row mt-3">
					<div class="col-12 col-sm-5">
						거주국가 <select class="form-select my-2">
							<option>::선택::
						</select>
					</div>
					<div class="col-12 col-sm-5 offset-sm-2">
						추천인 <input class="form-control my-2">
					</div>
				</div>

				<div class="row mt-3">
					<div class="col-12 col-sm-5">
						주소
						<div class="row">
							<div class="col-6">
								<input type="text" class="form-control my-2" placeholder="우편번호" disabled>
							</div>
							<div class="col-4">
								<a href="#" class="btn btn-primary my-2" data-bs-toggle="modal" data-bs-target="#zipcodeModal">우편번호 찾기</a>
							</div>
						</div>
						<input type="text" class="form-control my-2" placeholder="도로명 주소" disabled> <input type="text"
							class="form-control my-2" placeholder="상세 주소">
					</div>


				</div>


				<div class="row mt-3">
					<div class="col-12 col-sm-5">
						설명
						<textarea class="form-control my-2" placeholder="설명"></textarea>
					</div>

				</div>
				<!-- 
			<div class="row mt-3">
				<div class="col-12 col-sm-6">
					약관동의
					<div class="col-12">
						<input type="checkbox" name="termsConsent" onclick="selectAll(this)">전체 약관동의
					</div>
					<div class="col-12 border">
						<input type="checkbox" name="termsConsent" class="m-2">회원가입 및 운영약관 동의 (필수)<br> <input type="checkbox"
							name="termsConsent" class="m-2">개인정보 수집 및 이용 동의 (필수)<br> <input type="checkbox" name="termsConsent" class="m-2">이메일
						정보 마케팅 사용 동의 (선택)<br> <input type="checkbox" name="termsConsent" class="m-2">휴대전화 정보 마케팅 사용 동의 (선택)<br>
					</div>
				</div>
			</div>
			-->

				<div class="row mt-3">
					<div class="col-12 col-sm-5">
						약관동의
						<div class="form-check">
							<input class="form-check-input" type="checkbox" id="consentAll" name="termsConsent" onclick="selectAll(this)"
								checked> <label class="form-check-label" for="consentAll">전체 약관동의</label>
						</div>
						<div class="border border-2">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="consent1" name="termsConsent" checked> <label
									class="form-check-label" for="consent1">회원가입 및 운영약관 동의 (필수)</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="consent2" name="termsConsent" checked> <label
									class="form-check-label" for="consent2">개인정보 수집 및 이용 동의 (필수)</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="consent3" name="termsConsent" checked> <label
									class="form-check-label" for="consent3">이메일 정보 마케팅 사용 동의 (선택)</label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" id="consent4" name="termsConsent" checked> <label
									class="form-check-label" for="consent4">휴대전화 정보 마케팅 사용 동의 (선택)</label>
							</div>

						</div>
					</div>
				</div>

				<div class="row mt-3">
					<div class="col-12 col-sm-3">
						최종수정자 <input type="text" class="form-control my-2" value="장원영" disabled>
					</div>
					<div class="col-12 col-sm-3">
						최종수정일 <input class="form-control my-2" value="2021.01.01 12:12:12" disabled>
					</div>
					<div class="col-12 col-sm-3">
						최초등록자 <input class="form-control my-2" value="장원영" disabled>
					</div>
					<div class="col-12 col-sm-3">
						최초등록일 <input class="form-control my-2" value="2021.01.01 12:12:12" disabled>
					</div>
				</div>

			</div>
		</div>


		<!-- footer -->

		<div class="container-fluid">
			<footer class="py-3 my-4">
				<ul class="nav justify-content-center border-bottom pb-3 mb-3">
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
					<li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
				</ul>
				<p class="text-center text-muted">© 2021 Company, Inc</p>
			</footer>
		</div>



	</form>




<script type="text/javascript">

	function selectAll(selectAll) {
		const checkboxes 
			= document.getElementsByName("termsConsent");
		
		checkboxes.forEach((checkbox) => {
			checkbox.checked = selectAll.checked;
		})
	}
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script src="${path}/resources/js/sidebars.js"></script>

</body>
</html>



		<%-- # {ifmmSeq}
			, #{ifmmName}
			, #{ifmmId}
			, #{ifmmGenderCd}
			, #{ifmmDob}
			, #{ifmmFavoriteColor}
			, 0
			, 76
			, #{ifmmRegDate}
			, 78
			, #{ifmmEmailConsentNy}
			, #{ifmmSmsConsentNy}
			, #{ifmmPushConsentNy} --%>