scrollToElement = (obj) ->
  obj.scrollIntoView({behavior: "smooth"})
  return

$(document).on 'click', '#how', ->
  scrollToElement $('div#how')
  return
