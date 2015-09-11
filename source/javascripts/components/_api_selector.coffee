class omise.ApiSelector

  constructor: (element, options) ->
    @element = element
    console.log("here")

  events: ->
    @element.on "change", (e) => @change(e)
    return {}

  change: (event) ->
    selectedVersion = $("option:selected", @element).val()
    currentPath     = window.location.pathname
    matches         = currentPath.match(/v\d{8}/)
    if matches != null && matches.length > 0
      window.location = "/"
    else
      window.location = "/v#{selectedVersion}#{currentPath}"