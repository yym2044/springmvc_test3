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
<%-- <link href="${path}/resources/css/bootstrap.min.css" rel="stylesheet"/> --%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<link href="${path}/resources/css/style.css" rel="stylesheet"/>
<link href="${path}/resources/css/sidebars.css" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">

</head>
<body>
	<form>


<c:out value="${rt.ifmmSeq}"/>
<c:out value="${rt.ifmmName}"/>

		<div class="container-fluid">
			<div class="row bg-dark mb-2" style="height: 42px;">
				<div class="col col-md-12 text-white d-flex align-items-center"><c:out value="${rt.ifmmSeq}"/></div>
			</div>

			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">íì ê¸°ë³¸ ì ë³´</span>
				</div>
			</div>

			<!-- table -->

			<table class="table" style="border-collapse: collapse;">
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ìì´ë</td>
					<td class="text-start">yym2044<span class="ms-2"><a href="#" class="fs-6"
							style="text-decoration: none;">ë¹ë²ë³ê²½</a></span></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ì´ë¦</td>
					<td class="text-start">ì¤ìë¯¼</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ì´ë©ì¼</td>
					<td class="text-start">yym2044@naver.com<span class="badge bg-primary ms-1">ìì ëì</span></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">íìë±ê¸</td>
					<td class="text-start"><span class="fw-bold">ì¼ë°íì</span><span class="ms-2"><a href="#" class="" style="text-decoration: none;">ë±ê¸ë³ê²½</a></span></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ì£¼ì</td>
					<td class="text-start">ê²½ê¸°ë ë¨ìì£¼ì</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">í´ëí°</td>
					<td class="text-start">010-1234-5678<span class="badge bg-secondary ms-1">ìì ê±°ë¶</span></td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ì íë²í¸</td>
					<td class="text-start">02-123-4567</td>
				</tr>
			</table>

			<div class="text-center">
				<a href="./memberEdit.html" type="button" class="btn btn-outline-dark btn-sm border border-3 container1">ì ë³´ìì </a>
			</div>

			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">ì¶ê° ì ë³´</span>
				</div>
			</div>

			<!-- table -->

			<table class="table">
				
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ê°ì/ì ì</td>
					<td class="text-start">2022.02.17 22:12</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ë¡ê·¸ì¸</td>
					<td class="text-start">ì´ ë¡ê·¸ì¸ 119í (ë§ì§ë§ ë¡ê·¸ì¸ : 2022.02.17)</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ìëìì¼</td>
					<td class="text-start">1996.06.07</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ì±ë³</td>
					<td class="text-start">ë¨ì±</td>
				</tr>
				<tr>
					<td style="width: 200px;" class="bg-light text-start">ë§ì¼í ìì ëì</td>
					<td class="text-start">ì</td>
				</tr>
			</table>

			<div class="row mb-2">
				<div class="col col-md-12 d-flex">
					<i class="bi bi-caret-right-square-fill text-primary"></i> <span class="ms-2 fw-bold">ê´ë¦¬ì ì´ì ë©ëª¨</span>
				</div>
			</div>

			<div class="row mb-4">
				<div class="col-12 col-lg-10 pe-0">
					<input type="text" class="form-control" id="inputMemo" name="inputMemo" autocomplete="off">
				</div>
				<div class="col-12 col-lg text-end">
					<a class="btn btn-outline-primary" onclick="add_row()" onclick="clearInput()">ë±ë¡</a> <a
						class="btn btn-outline-danger" onclick="delete_row()">ì­ì </a>
				</div>
			</div>
			<div class="table-responsive">
				<table class="table container2" style="border-collapse: separate; min-width: 800px;">
					<thead>
						<tr>
							<th style="width: 100px;">ë²í¸</th>
							<th>ë´ì©</th>
							<th style="width: 200px;">ìì±ì¼</th>
							<th style="width: 100px;">ìì±ì</th>
						</tr>
					</thead>
					<tbody id="my-tbody">
						<!-- 
			<tr>
			<td colspan="5">ê´ë¦¬ì ë©ëª¨ê° ììµëë¤.</td>
			</tr> 
		-->
					</tbody>
				</table>
			</div>

			<div class="text-center">
				<button type="button" class="btn btn-sm btn-outline-dark border border-3 container1" onClick="window.close()">ë«ê¸°</button>
			</div>



		</div>
	</form>


	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	<script src="${path}/resources/js/sidebars.js"></script>

	<script type="text/javascript">
		var count = 1;

		function add_row() {
			var my_tbody = document.getElementById('my-tbody');
			// var row = my_tbody.insertRow(0); // ìë¨ì ì¶ê°
			var row = my_tbody.insertRow(my_tbody.rows.length); // íë¨ì ì¶ê°
			var cell1 = row.insertCell(0);
			var cell2 = row.insertCell(1);
			var cell3 = row.insertCell(2);
			var cell4 = row.insertCell(3);
			cell1.innerHTML = count;
			cell2.innerHTML = document.getElementById("inputMemo").value;
			cell3.innerHTML = new Date().toLocaleString();
			cell4.innerHTML = 'Master';

			count += 1;

			var input = document.getElementById('inputMemo');
			input.value = null;
		}

		function delete_row() {
			var my_tbody = document.getElementById('my-tbody');
			if (my_tbody.rows.length < 1)
				return;
			// my_tbody.deleteRow(0); // ìë¨ë¶í° ì­ì 
			my_tbody.deleteRow(my_tbody.rows.length - 1); // íë¨ë¶í° ì­ì 
		}
	</script>

</body>

</html>