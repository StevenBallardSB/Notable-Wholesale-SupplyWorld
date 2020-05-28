$(document).ready(function() {

  $("#searchBtn").click(function() {
    var searchQuery = $(".searchButton").val().toLowerCase();

    switch (searchQuery) {
      case "":
        alert("Enter a valid search query!");
        break;
      case "groceries":
      case "grocery":
      case "food":
      case "meat sticks":
      case "crackers":
      case "tofu":
        window.location.href = "groceries.jsp";
        break;
      case "clothing":
      case "clothes":
      case "romphim":
      case "onesie":
      case "snuggy":
        window.location.href = "Clothing.html";
        break;
      case "electronics":
      case "tv":
      case "television":
      case "computer":
      case "display cable":
        window.location.href = "electronics.html";
        break;
      case "sporting goods":
      case "sports":
      case "javelin":
      case "nunchucks":
      case "rollerskates":
        window.location.href = "sporting-goods.html";
        break;
      case "office supplies":
      case "office":
      case "stapler":
      case "paper shredder":
      case "3d printer":
        window.location.href = "office-supplies.html";
        break;

      default:
        alert("Enter a valid search query!");
    }
  });



  // FILTER METHOD

//  $("#filterButton").click(function() {
//    var minPrice = parseFloat($(".lowPrice").val());
//    var maxPrice = parseFloat($(".highPrice").val());
//
//    var priceArray = [];
//    for (var i = 0; i < 3; i++) {
//      var numb = parseFloat($(".prodPrice").eq(i).html());
//      priceArray.push(numb);
//    }
//    for (var i = 0; i < priceArray.length; i++) {
//      if (minPrice > priceArray[i] || maxPrice < priceArray[i]) {
//        $(".prodPrice").eq(i).parent().hide();
//      }
//      if (minPrice < priceArray[i] && maxPrice > priceArray[i]) {
//        $(".prodPrice").eq(i).parent().show();
//      }
//    }
//
//    var priceArray2 = [];
//    for (var i = 0; i < 3; i++) {
//      var numb = parseFloat($(".price").eq(i).html());
//      priceArray2.push(numb);
//    }
//    for (var i = 0; i < priceArray2.length; i++) {
//      if (minPrice > priceArray2[i] || maxPrice < priceArray2[i]) {
//        $(".price").eq(i).parent().hide();
//      }
//      if (minPrice < priceArray2[i] && maxPrice > priceArray2[i]) {
//        $(".price").eq(i).parent().show();
//      }
//    }
//
//
//  });
//
//
//});
