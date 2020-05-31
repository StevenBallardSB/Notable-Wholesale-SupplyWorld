<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Sign In</title>
</head>

<body>
	<c:import url="/sharedViews/header.jsp" />

<div class="container home2">
  <div class="row">
    <div class="col-xs-12 col-md-8 col-md-offset-2 col-lg-6 col-lg-offset-3 col-xl-4 col-xl-offset-4">
      <div class="container" id="nwContainer">
        <div class="card" id="nwCard">
                   <h1>Sign In</h1>
          <div class="container-fluid" id="nwContainer">
            <form title="" name="LogonForm" method="post" action="login" id="LogonForm" novalidate="novalidate">
            
            <input type="hidden" name="action" value="login">
            
              <fieldset>

                <div class="form-group">
                  <span class="h6-style-guide">Sign in to access your
                    Supply World account.</span>
                </div>
                <div class="form-group">
                  <label for="logonId">Email Address</label> 
                  <input id="logonId" class="ctHidden form-control valid" aria-describedby="logonId_validation" name="email" maxlength="251" type="email" title="Email Address" value="" autocomplete="off"
                    style="background-image: url(&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAASCAYAAABSO15qAAAAAXNSR0IArs4c6QAAAUBJREFUOBGVVE2ORUAQLvIS4gwzEysHkHgnkMiEc4zEJXCMNwtWTmDh3UGcYoaFhZUFCzFVnu4wIaiE+vvq6+6qTgthGH6O4/jA7x1OiCAIPwj7CoLgSXDxSjEVzAt9k01CBKdWfsFf/2WNuEwc2YqigKZpK9glAlVVwTTNbQJZlnlCkiTAZnF/mePB2biRdhwHdF2HJEmgaRrwPA+qqoI4jle5/8XkXzrCFoHg+/5ICdpm13UTho7Q9/0WnsfwiL/ouHwHrJgQR8WEwVG+oXpMPaDAkdzvd7AsC8qyhCiKJjiRnCKwbRsMw9hcQ5zv9maSBeu6hjRNYRgGFuKaCNwjkjzPoSiK1d1gDDecQobOBwswzabD/D3Np7AHOIrvNpHmPI+Kc2RZBm3bcp8wuwSIot7QQ0PznoR6wYSK0Xb/AGVLcWwc7Ng3AAAAAElFTkSuQmCC&quot;); background-repeat: no-repeat; background-attachment: scroll; background-size: 16px 18px; background-position: 98% 50%;"
                    aria-required="true" aria-invalid="false">
                </div>
                <div class="form-group">
                  <label for="logonPassword">Password</label> 
                  <input class="ctHidden form-control" name="password" aria-describedby="logonPassword_validation" id="logonPassword" maxlength="40" type="password" autocomplete="off" title="Password">
                </div>
                <div class="form-group">
                  <div class="style-check">
                    <input id="option1" name="option1" type="checkbox" class="tabable"> 
                    <label for="option1" title="Remember Me">Remember Me</label>
                  </div>
                </div>
                <div class="form-group">
                  <input id="btnWide" type="submit" class="headerButton btn" value="Sign In">
                </div>

                <!-- 									<div class="form-group"> -->
                <!-- 										<a href="/ForgotPasswordView">Forgot Password?</a> -->
                <!-- 									</div> -->

                <hr>
                

              </fieldset>
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