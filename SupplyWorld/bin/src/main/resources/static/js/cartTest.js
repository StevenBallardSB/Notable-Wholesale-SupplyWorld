$(document).ready(function(){
  class cartItem {
    constructor(name, qty, price){
      this.name=name;
      this.qty=qty;
      this.price=price;
    }
  }
  $("#cart").click(function(){
    var name = $(".product-title").html();
    var price = $(".price span").html();
    var quantity = $(".qty").val();
    // alert(name + price + quantity + " is the product");
    var x = new cartItem(name,quantity,price);
    // if(sessionStorage.getItem("myCart") ===undefined){
    //   var cart = {x};
    //   sessionStorage.setItem("myCart",JSON.stringify(cart));
    // } else {
    //   var myStuff = JSON.parse(sessionStorage.getItem("myCart"));
    //   myStuff.push(x);
    //   sessionStorage.setItem("myCart", JSON.stringify(myStuff))
    // }
    sessionStorage.setItem(name,name);
    sessionStorage.setItem(name + "Quantity",quantity);
    sessionStorage.setItem(name + "Price",price);
    });

var keys = Object.keys(sessionStorage);
keys.sort();
for(var i =0; i<keys.length;i+=3){
  $("#n" + (i/3+1)).html(sessionStorage.getItem(keys[i]));
  $("#q" + (i/3+1)).html(sessionStorage.getItem(keys[i + 2]));
  $("#p" + (i/3+1)).html(sessionStorage.getItem(keys[i + 1]));
  // $("#d" + (i/3+1)).html("<button class=\"delete\" onclick=\"productDelete()\">DELETEME</button>")
}

function productDelete() {
  //removing storage session stuff

  var num =
  sessionStorage.removeItem(name);
  sessionStorage.removeItem(name + "Quantity");
  sessionStorage.removeItem(name + "Price");
}

// alert("right before 2nd for loop");
// for(var j = 1; j <=3; j++){
//   var sub = parseFloat(document.getElementById("p"+ j).innerHTML.replace("$",""));
//   document.getElementById("sub-total").innerHTML += sub;
// }

});
