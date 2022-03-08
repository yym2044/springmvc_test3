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
<link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet" />
<script src="${path}/resources/js/bootstrap.bundel.min.js"></script>
</head>
<body>
	<form>
	
		<c:out value="Group ${rt.ifcgSeq}"/> | <c:out value="${rt.ifcdOrder}"/> | <c:out value="${rt.ifcdName}"/> | <c:out value="${rt.ifcdDelNy}"/>
		<hr>
		<a href="/infra/code/codeEditForm?ifcdSeq=${rt.ifcdSeq}" style="text-decoration: none; color: green">수정하기</a>
		<a href="/infra/code/codeList" style="text-decoration: none">목록</a>
		<%-- <a href="/infra/code/codeDele?ifcdSeq=${rt.ifcdSeq}" style="text-decoration: none; color: red">삭제</a> --%>
		
		<a class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteModal">삭제</a>
		
		<!-- deleteModal -->
		
		<div class="modal fade" id="deleteModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">삭제</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>
					<div class="modal-body">선택항목을 삭제합니다.</div>
					<div class="modal-footer">
						<a class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#deleteConfirmModal">확인</a>
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- deleteConfirmModal -->
		<div class="modal fade" id="deleteConfirmModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">확인</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
					</div>
					<div class="modal-body">정말 삭제합니다.</div>
					<div class="modal-footer">
						<a class="btn btn-primary" href="./memberList5.html" role="button">확인</a>
						<button type="button" class="btn btn-danger" data-bs-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
	
	</form>
</body>

</html>