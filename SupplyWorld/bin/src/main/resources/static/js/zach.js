$(document).ready(function() {

  class Product {
    constructor(name, price, image, url) {
      this.name = name;
      this.price = price;
      this.image = image;
      this.url = url;
    }
  }

  var name = $(".prod-1 .prodName").html();
  var price =$(".prod-1 .prodPrice").html();
  var img = $(".prod-1 img").attr('src');
  var url = $(".prod-1 a").attr('href');
  product1 = new Product(name, price, img, url);

  var name2 = $(".prod-2 .prodName").html();
  var price2 = $(".prod-2 .prodPrice").html();
  var img2 = $(".prod-2 img").attr("src");
  var url2 = $(".prod-2 a").attr("href");
  product2 = new Product(name2, price2, img2, url2);

  var name3 = $(".prod-3 .prodName").html();
  var price3 = $(".prod-3 .prodPrice").html();
  var img3 = $(".prod-3 img").attr("src");
  var url3 = $(".prod-3 a").attr("href");
  product3 = new Product(name3, price3, img3, url3);

  var products = [product1, product2, product3];

  // Sort Ascending Method
  var showSorted = function() {
    $("#SGProductsStart").hide();
    $("#SG-Products-Sort").show();

    products.sort(function(a, b) {
      return a.price - b.price;
    });

    var i;
    for (i = 0; i < products.length; i++) {
      $(".prodSort-" + (i + 1) + " a").attr("href", products[i].url);
      $(".prodSort-" + (i + 1) + " img").attr("src", products[i].image);
      $(".prodSort-" + (i + 1) + " .name").html(products[i].name);
      $(".prodSort-" + (i + 1) + " .price").html(products[i].price);
    }
  };

  // Sort Descending Method
  var showReverseSorted = function() {
    $("#SGProductsStart").hide();
    $("#SG-Products-Sort").show();

    products.sort(function(a, b) {
      return b.price - a.price;
    });

    var i;
    for (i = 0; i < products.length; i++) {
      $(".prodSort-" + (i + 1) + " a").attr("href", products[i].url);
      $(".prodSort-" + (i + 1) + " img").attr("src", products[i].image);
      $(".prodSort-" + (i + 1) + " .name").html(products[i].name);
      $(".prodSort-" + (i + 1) + " .price").html(products[i].price);
    }
  };

  // Sort Alphabetically Method
  var alphaSort = function() {
    $("#SGProductsStart").hide();
    $("#SG-Products-Sort").show();

    products.sort((a, b) => a.name.localeCompare(b.name));

    var i;
    for (i = 0; i < products.length; i++) {
      $(".prodSort-" + (i + 1) + " a").attr("href", products[i].url);
      $(".prodSort-" + (i + 1) + " img").attr("src", products[i].image);
      $(".prodSort-" + (i + 1) + " .name").html(products[i].name);
      $(".prodSort-" + (i + 1) + " .price").html(products[i].price);
    }
  };

  $("#sortAscending").on("click", showSorted);

  $("#sortDescending").on("click", showReverseSorted);

  $("#sortAlpha").on("click", alphaSort);

});
