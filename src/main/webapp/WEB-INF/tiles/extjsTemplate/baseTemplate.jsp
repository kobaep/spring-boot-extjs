<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Spring boot extjs</title>
    <spring:url value="/resources/core/extjs/resources/css/ext-all.css" var="extCss" />
    <spring:url value="/resources/core/css/jqueryUi.min.css" var="jqueryUiCss" />
    <spring:url value="/resources/core/css/default.css" var="defaultCss" />
    <link href="${extCss}" rel="stylesheet" />
    <link href="${jqueryUiCss}" rel="stylesheet" />
    <link href="${defaultCss}" rel="stylesheet" />
    <spring:url value="/resources/core/extjs/adapter/ext/ext-base.js" var="extBaseJs" />
    <spring:url value="/resources/core/extjs/ext-all.js" var="extAllJs" />
    <spring:url value="/resources/core/js/jquery.min.js" var="jqueryJs" />
    <spring:url value="/resources/core/js/jqueryUi.min.js" var="jqueryUiJs" />
    <script src="${extBaseJs}"></script>
    <script src="${extAllJs}"></script>
    <script src="${jqueryJs}"></script>
    <script src="${jqueryUiJs}"></script>
</head>
<body onunload="">
    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="body"/>
    <tiles:insertAttribute name="footer"/>
</body>
</html>