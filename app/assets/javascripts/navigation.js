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
        console.log("been clicked yo");
        $('#small-home-h2').goTo();
        // $('#home-text').removeClass( "show" );
      });



  });
});
