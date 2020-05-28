<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Notable Wholesale - Home</title>
</head>

<body>
	
	 <c:redirect url="/cart">
		<c:param name="action"/>
	</c:redirect>
	
</body>

</html>