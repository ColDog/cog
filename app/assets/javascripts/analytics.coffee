@view = {}

param = (name)->
  name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
  regex = new RegExp("[\\?&]" + name + "=([^&#]*)")
  results = regex.exec(location.search)
  return results == null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));

$ ->
  $.getJSON( "http://ipinfo.io/", (data)->
    view.key = Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15)
    view.ip = data.ip
    view.country = data.country
    view.region = data.region
    view.organization = data.org
    view.city = data.city
    view.latitude = data.loc.split(',')[0]
    view.longitude = data.loc.split(',')[1]
    view.path = window.location.pathname
    view.campaign = param('c') || param('campaign') || param('segment')
    $.post( '/analytics', {view: view})
  )

  document.addEventListener('click', (evt)->
    element = evt.target || evt.srcElement
    if element.tagName == 'A'
      console.log('button was clicked with this id', element.href)
      $.post( '/analytics',{view: view, click: element.href})
  )