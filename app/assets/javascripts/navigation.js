  (function($) {
      $.fn.goTo = function() {
          $('html, body').animate({
              scrollTop: $(this).offset().top + 'px'
          }, 'slow');
          return this; // for chaining...
      }
  })(jQuery);

  $(document).on('ready', function () {
    console.log("working");
      $('.divButtonArrow').on('click', function () {
        $('#arrow').goTo();
        $('#home-text').removeClass( "show" );
      });
  });
// burger navigation should go here
});
