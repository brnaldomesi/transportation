(function($) {
var $galleryImages = $('.carousel-images ul li');
var $prev = $('.carousel .prev');
var $next = $('.carousel .next');
var counter = 0;
var calloutValue = $('.specialFeature').text();

  $(document).ready(function() {

    //function for changing hero image

    //function for highlighting selected image in carousel
    function setActiveImage(event) {
      $('ul').find('.borderSelector').toggleClass('borderSelector');
      var $getImage = (event.target.id);
      $(this).toggleClass('borderSelector');
    }

    // Handles gallery scrolling behaviour and button state
    function displayCallout() {
      if (calloutValue === 'Most popular') {
        $('#popular').css('display', 'block');
      } else if (calloutValue === 'New arrival') {
        $('#new').css('display', 'block');
      }
    }

    function changeActiveClassNext() {
      $next.eq(counter + 3).removeClass('active');
      $next.eq(counter).addClass('active');
      $next.eq(counter - 1).addClass('active');
      $next.eq(counter - 2).addClass('active');
    }

    function changeActiveClassPrev() {
      $prev.eq(counter - 1).removeClass('active');
      $prev.eq(counter).addClass('active');
      $prev.eq(counter + 1).addClass('active');
      $prev.eq(counter + 2).addClass('active');
    }

    function changeButtonState() {
      if (counter === 0) {
        $prev.prop('disabled', true);
      } else {
        $prev.prop('disabled', false);
      }
      if ($galleryImages.length === counter + 3) {
        $('.next').prop('disabled', true);
      } else {
        $('.next').prop('disabled', false);
      }
    }

    function setEventListeners() {
      $('.next').on('click', function() {
        counter++;
        changeActiveClassNext();
        changeButtonState();
        $('ul').animate({
          left: '-=210'
        }, 500);
      });

      $('.prev').on('click', function() {
        counter--;
        changeActiveClassPrev();
        changeButtonState();
        if (counter === 0) {
          $(this).prop('disabled', true);
        } else {
          $(this).prop('disabled', false);
        }
        $('ul').animate({
          left: '+=210'
        }, 500);
      });

      //event handler for image selection
      $('img').on('click', setActiveImage)
    }

  displayCallout()
  changeButtonState()
  setEventListeners()
  });

})(jQuery);

