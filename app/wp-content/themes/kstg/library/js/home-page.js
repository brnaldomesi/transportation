(function($) {

  $('#mc-embedded-subscribe-form').on('submit', function() {
    return KSTG.validation.email(document.querySelector('#newsletter-email-address'));
  });

})(jQuery);
