<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>



<form method="post" action="/infra/code/codeInst">

	<select name="ifcgSeq">
		<c:forEach items="${list}" var="item" varStatus="status">
			<option>
				<c:out value="${item.ifcgSeq}" />
			</option>
		</c:forEach>
	</select> 
	
	<input type="text" name="ifcdOrder" placeholder="ifcdOrder"> 
	<input type="text" name="ifcdName" placeholder="ifcdName"> 
	<input type="text" name="ifcdDelNy" placeholder="ifcdDelNy"> 
	<input type="submit" value="제출">
</form>

