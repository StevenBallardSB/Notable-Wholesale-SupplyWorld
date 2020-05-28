<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Register</title>
</head>

<body>
	<c:import url="/sharedViews/header.jsp" />

<div class="container home">
  <div class="row">
    <div class="col-xs-12 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 col-xl-4 col-xl-offset-4">
      <div class="container" id="nwContainer">
        <div class="card" id="nwCard">
              <h1>Registration</h1>
          <div class="container-fluid" id="nwContainer">
            <form class="nwForm" action="register" method="post">
              <input type="hidden" name="action" value="add">
              <label class="">First Name:</label>
              <input class="regInput" type="text" name="firstName" value=""><br>
              <label class="">Last Name:</label>
              <input class="regInput" type="text" name="lastName" value=""><br>
              <label class="">Address 1:</label>
              <input class="regInput" type="text" name="address1" value=""><br>
              <label class="">Address 2:</label>
              <input class="regInput" type="text" name="address2" value=""><br>
              <label class="">City:</label>
              <input class="regInput" type="text" name="city" value=""><br>
              <label class="">State:</label>
              <input class="regInput" type="text" name="state" value=""><br>
              <label class="">Zip:</label>
              <input class="regInput" type="text" name="zip" value=""><br>
              <label class="">Country:</label>
              <input class="regInput" type="text" name="country" value=""><br>
              <label class="">Email:</label>
              <input class="regInput" type="email" name="email" value=""><br>
              <label class="">Password:</label>
              <input class="regInput" type="password" name="password" value=""><br>
              <label>&nbsp;</label>
           		<input id="btnWide" type="submit" value="Submit" class="headerButton btn">
            </form>          
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
		<c:import url="/sharedViews/footer.jsp" />
		<c:import url="/sharedViews/scripts.jsp" />
</body>

</html>