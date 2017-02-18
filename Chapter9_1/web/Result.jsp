<%--  Most important line is this, we make directive taglib because we want use taglib
prefix is just a name we giving this prefix c is belonging to this taglib information
same like servlet mapping we made up name. uri its adress where to find it, if adress
like this started http so we know we using jstl because we say that --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result page</title>
</head>
<body>
	<h1>Tip of the Day:</h1>
	<hr>
	<%-- By default is escapeXml is true , so that mean browser will not render this as html tag
			using prefix , and out is just normal print text to browser --%>
	<c:out value='${pageContent.currentTip}' />
	<br>
	<%-- Loop through the entire array(the "movieList" attribute) and prints
			each element in a new row.(This table has just one column per row) --%>
	<h3>Example using of c:forEach tag :</h3>
	<%-- items attribute in forEach tag must be some sort of collection, var attribute is temporally 
	maked variable for this collection when iterating always get new var --%>
	<table border="3">
		<c:forEach var="movie" items="${movieList}">
			<tr>
				<td>${movie}</td>
			</tr>
		</c:forEach>
	</table>

	<%-- this time forEach tag using optional attribute varStatus makes a new variable we name that variable
	and this variable hold an instance of javax.servlet.jsp.jstl.core.--%>
	<br><h3>Example using of c:forEach tag but this time with optional attribute varStatus:</h3>
	<table border="3">
		<tr><td>Counter</td><td>Movies</td></tr>
		<c:forEach var="movie" items="${movieList}" varStatus="movie_counter">
			<tr>
				<!--Helpfully, the Loop TagStatus class has a count property that gives
					you the current value of the iteration counter.(Like the "i" in a for loop.)-->
				<td>Count: ${movie_counter.count}</td>	<td>${movie}</td>
			</tr>
		</c:forEach>
	</table>
	
	<%-- begin and end attribute just give starting and end point of loop, and step
	how you will iterate this time +3  --%>
	<br><h3>Last example using same forEach tag but in addition we put attributes step begin and end:</h3>
	<table border='0'>
		<tr><td>Number</td></tr>
		<%-- you cannot do reverse order in here like step='-2' --%>
			<c:forEach var="number" items="numberList" begin='1' end='8' step='2'>
		 		<tr><td>${number}</td></tr>
		</c:forEach>
	</table>
	
</body>
</html>