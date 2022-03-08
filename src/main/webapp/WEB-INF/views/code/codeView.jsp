<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>




<c:out value="Group ${rt.ifcgSeq}"/> | <c:out value="${rt.ifcdOrder}"/> | <c:out value="${rt.ifcdName}"/> | <c:out value="${rt.ifcdDelNy}"/>
<hr>
<a href="/infra/code/codeEditForm?ifcdSeq=${rt.ifcdSeq}" style="text-decoration: none">수정하기</a>
<a href="/infra/code/codeList" style="text-decoration: none">목록</a>

