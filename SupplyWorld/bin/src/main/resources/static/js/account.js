function btnClicked() {
  $("#saveBtn").show();
  $("#pwBtn").hide();
  var emailHtml = $("#emailEdit").html();
  var editableText = $('<input type="text" id="emailEdit" />');
  var pwHtml = $("#pwEdit").html();
  var editableText2 = $('<input type="text" id="pwEdit"/>');
  var streetHtml = $("#streetEdit").html();
  var editableText3 = $('<input type="text" id="streetEdit" />');
  var cityHtml = $("#cityEdit").html();
  var editableText4 = $('<input type="text" id="cityEdit" />');
  editableText.val(emailHtml);
  editableText2.val(pwHtml);
  editableText3.val(streetHtml);
  editableText4.val(cityHtml);
  $("#emailEdit").replaceWith(editableText);
  $("#pwEdit").replaceWith(editableText2);
  $("#streetEdit").replaceWith(editableText3);
  $("#cityEdit").replaceWith(editableText4);
  $("#pwEdit").show();
}

function saveClick() {
  var email = $("#emailEdit").val();
  var viewableText = $('<p id="emailEdit">');
  var pwd = $("#pwEdit").val();
  var viewableText2 = $('<p id="pwEdit">');
  var street = $("#streetEdit").val();
  var viewableText3 = $('<p id="streetEdit">');
  var city = $("#cityEdit").val();
  var viewableText4 = $('<p id="cityEdit">');
  viewableText.html(email);
  viewableText2.html(pwd);
  viewableText3.html(street);
  viewableText4.html(city);
  $("#emailEdit").replaceWith(viewableText);
  $("#pwEdit").replaceWith(viewableText2);
  $("#streetEdit").replaceWith(viewableText3);
  $("#cityEdit").replaceWith(viewableText4);
  $("#saveBtn").hide();
  $("#pwBtn").show();
  saveValues()

}

function saveValues() {
  localStorage.email = $('#emailEdit').html();
  localStorage.pwd = $('#pwEdit').html();
  localStorage.street = $('#streetEdit').html();
  localStorage.city = $('#cityEdit').html();

}
  function getValues() {
    $('#emailEdit').html(localStorage.email);
    $('#pwEdit').html(localStorage.pwd);
    $('#streetEdit').html(localStorage.street);
    $('#cityEdit').html(localStorage.city);
  }

  function showPW() {
    $("#pwEdit").toggle();

  }




  $(document).ready(function() {
    getValues();
    $("#editProfBtn").click(btnClicked);
    $("#saveBtn").click(saveClick);
    $("#pwBtn").click(showPW);
  });
