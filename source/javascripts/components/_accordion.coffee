class omise.Accordion
  @groups: {}

  constructor: (element, options) ->
    @element = element
    @options = options
    @header = @element.find(options.header)
    @body = @element.find(options.body)

    if @options.group
      @constructor.groups[@options.group] ||= $([])
      @constructor.groups[@options.group] = @constructor.groups[@options.group].add(@element)

  events: ->
    self = @
    @header.on "click", -> self.toggle()
    return {}

  toggle: ->
    if @element.hasClass("OPEN")
      @close()
    else
      @open()

  open: ->
    @closeAllFromGroup() if @options.group
    @element.addClass("OPEN")
    @body.removeClass("HIDDEN")

  close: ->
    @element.removeClass("OPEN")
    @body.addClass("HIDDEN")

  closeAllFromGroup: ->
    if group = @options.group
      @constructor.groups[@options.group].each ->
        $(this).data("accordion").closeIfOpenAndFromGroup(group)

  closeIfOpenAndFromGroup: (group) ->
    @close() if @options.group is group and @element.hasClass("OPEN")
