<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>index page</title>
</head>
<body>
<form action="controller.do" method="POST">
			<h1>Choose which HTML tag you want to know:</h1>
		  <select name="tips">
			  <option value="<b></b>">make bold</option>
			  <option value="</br>">break line</option>
			  <option value="<table></table>">make table</option>
		  </select>
		  <input type="SUBMIT" value="ENTER" /> 
		</form>
</body>
</html>