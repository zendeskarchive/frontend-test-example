(function() { // Thanks to this… ------------------- +
  var root = this;                                // |
                                                  // |
  var junk = "… It's fine to pollute this scope." // +

  root.AwesomePopup = function(text) {
    var $popup = $("<div />", {
      "class": "popup"
    });

    var $content = $("<div />", {
      "class": "content",
      "text": text
    });

    var $close = $("<a />", {
      "class": "close",
      "text": "Close"
    });

    $close.on("click", function() {
      $popup.remove();
    });

    $popup.append($content);
    $popup.append($close);

    $("body").append($popup);
  };
})(this);
