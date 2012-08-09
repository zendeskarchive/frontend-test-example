(function($) {
  $.fn.popup = function(text) {
    this.each(function() {
      var $el = $(this);

      $el.on("click", function() {
        AwesomePopup(text);
      });
    });
  };
})(jQuery);
