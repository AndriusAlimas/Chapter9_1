<!--  Most important line is this, we make directive taglib because we want use taglib
prefix is just a name we giving this prefix c is belonging to this taglib information
same like servlet mapping we made up name. uri its adress where to find it, if adress
like this started http so we know we using jstl because we say that -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result page</title>
</head>
<body>
			<h1>Tip of the Day:</h1><hr>
			<!-- By default is escapeXml is true , so that mean browser will not render this as html tag
			using prefix , and out is just normal print text to browser-->
			<c:out value='${pageContent.currentTip}' />
			<br>
</body>
</html>