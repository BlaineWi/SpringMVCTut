<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!-- SPRING TAG LIBRARY  -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Minutes Page</title>
</head>
<body>
	<h1>Add Minutes Exercised</h1>
	
	Language : <a href="?language=en">English</a> | <a href="?language=es">Spanish</a>
	
	
	<!-- Spring Form can bind objects back to our controller look at model in MinutesController -->
	<form:form modelAttribute="exercise">
		<table>
			<tr>
			
			<!-- Grabs value of goal.text in our properties file -->
				<td><spring:message code="goal.text"></spring:message></td>
				
				<!-- Minutes is in our model -->
				<td><form:input path ="minutes"/></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="Enter Exercise" />
				</td>
			</tr>
		</table>
	</form:form>
	
	<!-- Pulls goal.minutes out of our session -->
	<h1>Our goal for the day is: ${goal.minutes}</h1>
	
</body>
</html>