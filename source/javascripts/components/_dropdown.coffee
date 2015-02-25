class omise.Dropdown

  constructor: (element, options) ->
    @element = element
    @options = options
    @dropdown = $(@options.className)
  
  events: ->
    @element.on "click", (e) => @toggle(e)
    $(document).on "click", (e) => @close(e)
    return {}

  toggle: (event) ->
    event.stopPropagation()
    @element.toggleClass("CURRENT")
    @dropdown.fadeToggle(omise.ANIMATION_DURATION)
    if @element.hasClass("CURRENT")
      @dropdown.trigger("activate")

  open: (event) ->
    unless @dropdown.is(":visible")
      @element.addClass("CURRENT")
      @dropdown.fadeIn(omise.ANIMATION_DURATION)

  close: (event) ->
    if @dropdown.is(":visible")
      @element.removeClass("CURRENT")
      @dropdown.fadeOut(omise.ANIMATION_DURATION)
