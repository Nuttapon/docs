class omise.ApiSelector

  constructor: (element, options) ->
    @element = element
    matches = window.location.pathname.match(/v\d{8}/)
    if matches != null && matches.length > 0
      $('.ApiSelector').val(matches[0])

  events: ->
    @element.on "change", (e) => @change(e)
    return {}

  change: (event) ->
    selectedVersion = $("option:selected", @element).val()
    currentPath     = window.location.pathname
    matches         = currentPath.match(/v\d{8}/)
    if matches != null && matches.length > 0
      window.location = currentPath.replace(matches[0], selectedVersion)
    else
      window.location = "/#{selectedVersion}#{currentPath}"
