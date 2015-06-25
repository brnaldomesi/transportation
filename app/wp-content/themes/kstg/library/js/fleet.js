var galleryImages = document.querySelectorAll('.carousel-images ul li');

// if gallery image === [0]
  //disable button '.next' (37px)
  //change position of image sprite

//if gallery image === galleryImages.length
  //disable button '.prev' (-35px)
  //change position of image sprite


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

