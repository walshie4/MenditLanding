scrollToElement = (obj) ->
  obj.scrollIntoView()
  return

$(document).on 'click', '#how', ->
  scrollToElement $('div#how')
  return
