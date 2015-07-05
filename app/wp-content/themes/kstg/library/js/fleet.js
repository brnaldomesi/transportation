var galleryImages = document.querySelectorAll('.carousel-images ul li');
//Initialize counter at 0
var counter = 0;

// if gallery image === [0]
  //disable button
  //change position of image sprite '.prev' (0)
//else active button
  //change position of image sprite .prev (-35px)

//if gallery image[3] === galleryImages.length
  //disable button
  //change position of image sprite '.next' (37px)
//else active button
  //change position of image sprite .prev (70px)




(function($) {
  $(document).ready(function() {
    console.log( "ready!" );
    $('.next').on('click', function() {
      counter++;
      changeActiveClassNext();
      changeButtonState();
      console.log('clicked!');
      $('ul').animate({
        left: '-=210'
      }, 500);
    });
    $('.prev').on('click', function() {
      counter--;
      changeActiveClassPrev();
      changeButtonState();
      console.log('clicked!');
      $('ul').animate({
        left: '+=210'
      }, 500);
    });
  });

  changeActiveClassNext()
  changeButtonState()
})(jQuery);

