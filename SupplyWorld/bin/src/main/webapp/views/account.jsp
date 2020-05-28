<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Account</title>
</head>

<body>
  <c:import url="/sharedViews/header.jsp" />

  <div class="container home">
    <div class="row">
      <div class="col-md-12">
        <h1>User Profile</h1>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="card">
      <div class="container-fluid">
        <div class="wrapper row">
          <div class="col-sm-6">
            <div class="preview-pic tab-content product">
              <div class="tab-pane active" id="pic-1"><img src="images/rusty.jpg" /></div>
            </div>
          </div>
          <div class="details col-sm-6 product-details">
            <a class="headerButton btn" href="orders.jsp" role="button"><i class="fa fa-list-ul"></i> Order History</a>
            <a class="headerButton btn" href="wishlist.jsp" role="button"><i class="fa fa-gift"></i> Wishlist</a>
            <a class="headerButton btn" href="#" id="editProfBtn" role="button"><i class="fa fa-user"></i> Edit Profile</a>
            <h3 class="product-title">Account Details</h3>
            <div class="container">
              <h4 class="">Log In Details</h4>
              <div class="row">
                <div class="col-sm-4">
                  <p class="">Email Address:</p>
                </div>
                <div class="col-sm-6">
                  <p class="product-description" id="emailEdit">rusty.shackleford@shasha.com</p>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-4">
                  <p class="product-description">Password:</p>
                </div>
                <div class="col-sm-3">
                  <p class="product-description" id="pwEdit">*********</p>
                </div>
                <div class="col-sm-1">
                  <a class="headerButton btn" href="#" id="pwBtn" role="button"><i class="fa fa-eye"></i> Show Password</a>
                </div>
              </div>
              <h4 class="price">Shipping Address</h4>
              <div class="row">
                <div class="col-sm-4">
                  <p class="product-description">Street:</p>
                </div>
                <div class="col-sm-6">
                  <p class="product-description" id="streetEdit">1234 E Shasha Street</p>
                </div>
              </div>
              <div class="row">
                <div class="col-sm-4">
                  <p class="product-description">City:</p>
                </div>
                <div class="col-sm-3" id="editProf">
                  <p class="product-description" id="cityEdit">Arlen, TX</p>
                </div>
              </div>
            </div>
            <a class="headerButton btn" href="#" id="saveBtn" role="button"><i class="fa fa-check-circle"></i> Save</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>