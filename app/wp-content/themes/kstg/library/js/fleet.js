(function($) {
  $(document).ready(function() {
    console.log( "ready!" );
    $('.next').on('click', function() {
      console.log('clicked!');
      $('ul').animate({
        left: '-=210'
      }, 500);
    });
    $('.prev').on('click', function() {
      console.log('clicked!');
      $('ul').animate({
        left: '+=210'
      }, 500);
    });
  });
})(jQuery);

