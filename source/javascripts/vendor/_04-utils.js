(function (window, $) { "use strict";

  $.fn.highlight = function (what, spanClass) {
    return this.each(function () {
      var container = this,
          content = container.innerHTML,
          pattern = new RegExp('(' + what + ')','gi'),
          replaceWith = '<span ' + ( spanClass ? 'class="' + spanClass + '"' : '' ) + '>$1</span>',
          highlighted = content.replace(pattern,replaceWith);
      container.innerHTML = highlighted;
    });
  }

  $.getParameterByName = function (name) {
    name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
        results = regex.exec(location.search);
    return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
  }

})(window, jQuery);
