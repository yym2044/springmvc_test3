<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<c:choose>
	<c:when test="${fn:length(list) eq 0}">
		<tr>
			<td class="text-center" colspan="9">There is no data!</td>
		</tr>	
	</c:when>
	<c:otherwise>
		<c:forEach items="${list}" var="item" varStatus="status">	
		
		<%-- <a href="/infra/code/codeGroupView2?ifcgSeq=${item.ifcgSeq}">그룹 코드 조회</a> | <c:out value="그룹 ${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView1?ifcgSeq=${item.ifcgSeq}"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgDelNy}"/><br> --%>
		<a href="/infra/code/codeGroupView2?ifcgSeq=<c:out value="${item.ifcgSeq}"/>">그룹 코드 조회</a> | <c:out value="그룹 ${item.ifcgSeq}"/> | <a href="/infra/code/codeGroupView1?ifcgSeq=<c:out value="${item.ifcgSeq}"/>"><c:out value="${item.ifcgName}"/></a> | <c:out value="${item.ifcgDelNy}"/><br>
		
	<%-- 	?ifcgSeq=${item.ifcgSeq}	vs		?ifcgSeq=<c:out value="${item.ifcgSeq}"/> --%>
		
		</c:forEach>
	</c:otherwise>
</c:choose>