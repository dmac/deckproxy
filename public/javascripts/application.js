// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
Utils = {

  repositionDeckMetadata: function(minLeft, maxLeft) {
    var width = parseInt($("#deckmetadata").css("width"));
    if (window.innerWidth > maxLeft + width) {
      $("#deckmetadata").css("left", maxLeft);
    }
    else if (window.innerWidth > (minLeft + width)) {
      $("#deckmetadata").css("left", (window.innerWidth - width));
    }
    else {
      $("#deckmetadata").css("left", (minLeft));
    }
  }
}
