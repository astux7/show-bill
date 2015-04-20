var TextExpander = (function ($) {
  "use strict";

  function TextExpander($block, scrollHeight) {
    this.$button          = $(".more-info-bar", $block);
    this.$text            = $(".list", $block);
    this.arrow            = this.$button.find("span[class*='arrow-']");
  }

  TextExpander.init = function($element) {
    if ($element.length) {
      new TextExpander($element).bind();
    }
  }

  TextExpander.prototype.bind = function() {
    var _self = this;
    _self.$button.show();
    this.$button.on("click", function() { update(_self); });
  }

  function update(_self) {
    if (_self.$button.hasClass("expanded")) {
      actions(_self, "expanded", "contracted", false);
    } else {
      actions(_self, "contracted", "expanded", true);
    }
  }

  function actions(_self, from, to, type) {
    textAnimation(_self, type);
    arrow(_self, from, to);
    state(_self, from, to);
  }

  function arrow(_self, from, to) {
    _self.arrow.removeClass("arrow-" + from).addClass("arrow-" + to);
  }

  function state(_self, from, to) {
    _self.$button.removeClass(from).addClass(to);
  }

  function textAnimation(_self, expanded) {
    if(expanded) {
    _self.$text.show();
    }
    else {
      _self.$text.hide();
    }

  }

  return TextExpander;
}(window.jQuery));

$(document).ready(function() {
  TextExpander.init($(".subscriptions"));
  TextExpander.init($(".calls"));
  TextExpander.init($(".store"));
});