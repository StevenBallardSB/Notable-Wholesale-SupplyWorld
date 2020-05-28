<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<c:import url="/sharedViews/headMeta.jsp" />
<title>Wish List</title>
</head>

<body>
  <c:import url="/sharedViews/header.jsp" />

    <!--Actual Cart Stuff-->
    <form id="shopping-cart" action="cart.jsp" method="post">
      <table class="shopping-cart">
          <thead>
              <tr>
                  <th scope="col">Item</th>
                  <th scope="col">Qty</th>
                  <th scope="col">Price</th>
              </tr>
              <p class = "test"></p>
          </thead>
          <tbody></tbody>
      </table>
      <p id="sub-total">
        <strong>Sub Total</strong>: <span id="stotal"></span>
      </p>
      <ul id="shopping-cart-actions">
          <li>
              <input type="submit" name="update" id="update-cart" class="headerButton buttons my-2 my-sm-0" value="Update Cart" />
          </li>
          <li>
              <input type="submit" name="delete" id="empty-cart" class="headerButton buttons my-2 my-sm-0" value="Empty Cart" />
          </li>
          <li>
              <a href="home.jsp" class="buttons my-2 my-sm-0">Continue Shopping</a>
          </li>
          <li>
              <a href="checkout.jsp" class="buttons my-2 my-sm-0">Go To Checkout</a>
          </li>
      </ul>
    </form>

    <c:import url="/sharedViews/footer.jsp" />
	<c:import url="/sharedViews/scripts.jsp" />

</body>

</html>