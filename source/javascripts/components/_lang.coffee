class omise.Lang
  @langs: []

  @selectUserLang: ->
    if cookies.hasItem("lang")
      userLang = cookies.getItem("lang")
      selected = false
      $(".-omise-lang").each ->
        lang = $(this).data("lang")
        if !selected && lang.name is userLang
          selected = true
          lang.element.trigger("click")
    else
      $(".-omise-lang").first().trigger("click")

  constructor: (element, options) ->
    @element = element
    @options = options
    @name = @options.name
    @constructor.langs.push(@name)
    @constructor.langs = _.uniq(@constructor.langs)

  events: ->
    self = @
    @element.on "click", -> self.select()
    return {}

  select: ->
    cookies.setItem("lang", @name, Infinity);
    @toggleAllSelector()
    @toggleAllBody()

  toggleAllSelector: ->
    langName = @name
    $(".-omise-lang").each ->
      lang = $(this).data("lang")
      if lang.name is langName
        lang.element.addClass("SELECTED")
      else
        lang.element.removeClass("SELECTED")

  toggleAllBody: ->
    langName = @name
    _.forEach @constructor.langs, (otherlangName) ->
      if langName is otherlangName
        $(".lang-#{langName}").removeClass("HIDDEN")
      else
        $(".lang-#{otherlangName}").addClass("HIDDEN")
