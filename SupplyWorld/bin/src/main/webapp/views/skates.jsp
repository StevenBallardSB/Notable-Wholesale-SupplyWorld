<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Rocket Skates</title>
</head>

<body>
  <c:import url="/sharedViews/header.jsp" />

  

  <div class="container">
    <div class="card">
      <div class="container-fluid">
        <div class="wrapper row">
          <div class="col-sm-6">
            <div class="preview-pic tab-content product">
              <div class="tab-pane active"><img src="images/skates.jpg" /></div>
            </div>
          </div>
          <div class="details col-sm-6 product-details">
            <h3 class="product-title">Rocket-powered Rollerskates</h3>
            <div class="rating">
              <div class="stars">
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                <span class="fa fa-star"></span>
              </div>
              <span class="review-no">48 reviews</span>
            </div>
            <p class="product-description">Whether you're making a getaway or just taking a stroll, these rocket-powered skates will do the job</p>
            <h4 class="price">Price: <span>$299.99</span></h4>
            <p class="vote"><strong>93%</strong> of buyers enjoyed this product! <strong>(67 votes)</strong></p>
            <p> Status: <span>Available</span></p>
            <!-- <a class="headerButton btn" href="#" role="button">Add to Cart</a> -->

            <form class="add-to-cart" action="cart" method="POST">
              <label for="qty-1">Quantity</label>
              <input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
              <input type="hidden" name ="productId" value = "10">
              <input type="hidden" name="name" value="Skates"> <input type="hidden" name="price" value = "299.99">
              <button name="action" id="cart" value="Add" class="headerButton btn">Add to cart</button>
            </form>

          </div>
        </div>
      </div>
    </div>
  </div>

  <c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>