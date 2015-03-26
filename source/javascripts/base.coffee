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

$('body,html').bind 'scroll mousedown wheel DOMMouseScroll mousewheel keyup', (e) ->
  if e.which > 0 or e.type == 'mousedown' or e.type == 'mousewheel'
    $('html,body').stop()
  return

showDescOnHover = (elem, text) ->
    $(elem).hover (->
      $(this).find('i').addClass "hidden"
      $textElem = $(this).find('span')
      $textElem.removeClass "hidden"
      $textElem.text(text)
      return
    ), ->
      $(this).find('i').removeClass "hidden"
      $textElem = $(this).find('span')
      $textElem.addClass "hidden"
      $textElem.text("")
      return

showDescOnHoverImg = (elem, text) ->
    $(elem).hover (->
      $(this).find('img').addClass "hidden"
      $textElem = $(this).find('span')
      $textElem.removeClass "hidden"
      $textElem.text(text)
      return
    ), ->
      $(this).find('img').removeClass "hidden"
      $textElem = $(this).find('span')
      $textElem.addClass "hidden"
      $textElem.text("")
      return


showDescOnHover($('#howNav'), "How?")
showDescOnHover($('#changeNav'), "Help Out")
showDescOnHoverImg($('#homeNav'), "Home")
showDescOnHoverImg($('#assemblyNav'), "Assembly")
