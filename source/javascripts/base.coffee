# jQuery for page scrolling feature - requires jQuery Easing plugin
$ ->
    page = $('html, body')
    $('a.page-scroll').click (e) ->
        page.on 'scroll mousedown wheel DOMMouseScroll mousewheel keyup touchmove', ->
            page.stop()
            return
        page.animate { scrollTop: $($(this).attr("href")).offset().top }, 1000, 'easeInOutExpo', ->
            page.off 'scroll mousedown wheel DOMMouseScroll mousewheel keyup touchmove'
            return
        false
