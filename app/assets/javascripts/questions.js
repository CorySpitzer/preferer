$(function() {
  $('.pagination').hide()
  $(window).scroll(function() {
    var url = $('.pagination .next_page').attr('href');
    if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 50) {
      $(window).off("scroll");
      $("#questions").append("<p id='loading'>Loading more questions...</p>");
      $.getScript(url);
    }
  });

});
