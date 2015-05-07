# jQuery for page scrolling feature - requires jQuery Easing plugin
$ ->
  $("a.page-scroll").bind "click", (event) ->
    $anchor = $(this)
    $("html, body").stop().animate
      scrollTop: $($anchor.attr("href")).offset().top
    , 1000, "easeInOutExpo"
    event.preventDefault()
    return

  return
