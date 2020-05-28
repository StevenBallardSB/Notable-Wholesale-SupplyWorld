$(document).ready(function() {

  $('.color-choose input').on('click', function() {
      var color = $(this).attr('data-image');

      $('.active').removeClass('active');
      $('.left-column img[data-image = ' + color + ']').addClass('active');
      $(this).addClass('active');
  });

});
