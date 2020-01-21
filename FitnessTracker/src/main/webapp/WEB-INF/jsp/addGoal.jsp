<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Goal</title>

<style>

	.error{
		color:#ff0000;
	}
	
	.errorblock {
		color: #000;
		background-color: #ffEEEE;
		border: 3px solid #ff0000;
		padding: 8px;
		margin: 16px;
	}
	
</style>
</head>
<body>

	<!-- Ties to goal object -->
	<form:form modelAttribute="goal">
	<!-- All of the errors -->
		<form:errors path="*" cssClass = "errorblock" element="div"></form:errors>
		<table>
			<tr>
				<td>Enter Minutes:</td>
				<td>
				<!-- Method inside of goal called minutes, getter and setters -->
					<form:input path="minutes" cssErrorClass="error"/>
					
				</td>
				<td>
					<form:errors path="minutes" cssClass="error"/>					
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="submit" value="Enter Goal Minutes" />
				</td>
			</tr>
		
		</table>
	
	</form:form>



</body>
</html>