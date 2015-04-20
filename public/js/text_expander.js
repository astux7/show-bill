var OverviewDescription = (function ($) {
  "use strict";

  var settings = {
    minHeight: 200,
  }

  function OverviewDescription($block, scrollHeight) {
    this.$button          = $(".more-info-bar", $block);
    this.$text            = $(".list", $block);
    this.arrow            = this.$button.find("span[class*='arrow-']");
  }

  OverviewDescription.init = function($element) {
    if ($element.length) {
      //var scrollHeight = $(".details", $element)[0].scrollHeight;
      //if (scrollHeight > settings.minHeight) {
        new OverviewDescription($element).bind();
      //}
    }
  }

  OverviewDescription.prototype.bind = function() {
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

  function textAnimation(_self, type) {
    //_self.$text.css("height", closeHeight);
    if(type){
    _self.$text.show();//.addClass("text-accordion");
    }else{
      _self.$text.hide();
    }

  }

  return OverviewDescription;
}(window.jQuery));

$(document).ready(function() {
  OverviewDescription.init($(".subscriptions"));
  OverviewDescription.init($(".calls"));
  OverviewDescription.init($(".store"));
});