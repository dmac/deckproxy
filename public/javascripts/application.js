// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
Utils = {
  repositionDeckMetadata: function(minLeft, maxLeft) {
    var width = parseInt($("#deckmetadata").css("width"));
    if (window.innerWidth > maxLeft + width) {
      setTo = maxLeft
    }
    else if (window.innerWidth > (minLeft + width)) {
      setTo = (window.innerWidth - width)
    }
    else {
      setTo = minLeft
    }
    $.ajax({
      type: "POST",
      url: "/search/set_metadata_location",
      data: {
        location: setTo
      },
      success: function() {
        $("#deckmetadata").css("left", (setTo));
      }
    });
  }
}
