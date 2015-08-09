(function($) {
var $galleryImages = $('.carousel-images ul li');
var $prev = $('.carousel .prev');
var $next = $('.carousel .next');
var counter = 0;
var calloutValue = $('.specialFeature').text();
var heroImage = $('.hero-image');

  $(document).ready(function() {

    //on click get id of thumbnail image
    //get hero img id - DONE
    //change value of imgString
    // var imgString = '<img src="<?php echo $image1['sizes']['gallery-thumb']; ?>" alt="<?php echo ID OF CLICKED IMG['alt']; ?>" width="200px" height="100px" />'
    //change hero - add.html(imgString); to vehicle-hero dive

    //function for changing hero image
    function changeHeroImage(activeThumbId) {
      var foo = (activeThumbId) + '-large';
      console.log('image got', foo);
    }


    //function for highlighting selected image in carousel
    function setActiveImage(event) {
      var thumbId = $(this).attr('id').split('-')[0];
      $('ul').find('.borderSelector').toggleClass('borderSelector');
      $(this).toggleClass('borderSelector');
      changeHeroImage(thumbId);
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

