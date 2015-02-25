omise =

  ANIMATION_DURATION: 150

  doc: $(document)
  handlers: []
  views: {}

  trigger: (args...) ->
    @doc.trigger args...

  on: (args...) ->
    @doc.on args...

  off: (args...) ->
    @doc.off args...

  register: (fn) ->
    @handlers.push fn

  ready: (fn) ->
    if fn
      @on "ready", fn

  start: () ->
    $.each @handlers, -> @()

  dispatch: (key) ->
    selector = "data-#{key}"
    constructor = omise[omise.camelCase(key)]

    $("[#{selector}]").each ->
      element = $(this)
      options = element.data(key) || null
      self = new constructor(element, options)
      events = self.events() if self.events

      element.removeAttr(selector)
      element.addClass("-omise-#{key}")
      element.data(key, self)

      if events
        for fromEvent, toMethod of events
          element.on fromEvent, self[toMethod].bind(self)

  findTemplate: (name) ->
    $("[data-template='#{name}']")

  renderTemplate: (name, args) ->
    result = $.render(@findTemplate(name).html(), args.withData)
    $result = $(result)

    if args.andAppendTo
      target = @findTemplate(args.andAppendTo)
      $result.appendTo(target)

    $result

  camelCase: (str) ->
    str.charAt(0).toUpperCase() + $.camelCase(str.slice(1));

window.omise = omise
