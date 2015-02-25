class omise.Search
  @db = null

  constructor: (element, options) ->
    @element = element
    @options = options
    @input = element.find("input").first()
    @results = $("<div class=\"SearchResults\"></div>")
    @element.append(@results)
    if query = $.getParameterByName("q")
      _.forEach query.split(" "), (term) ->
        $(".MainContent h1, .MainContent h2, .MainContent h3").highlight(term, "QueryHighlight")
    $.getJSON "/index.json", (db) =>
      @constructor.db = db

  events: ->
    self = @
    @element.on "activate", -> self.focusInput()
    @element.on "click", (event) -> event.stopPropagation()
    @input.on "keyup", -> self.search()
    return {}

  focusInput: ->
    @input.focus()

  search: ->
    terms = @filterOutShortTerms(@lowercaseTerms(@input.val().split(" ")))
    paths = _.intersection.apply(_, @findPaths(terms))
    results = @buildResults(paths, terms)
    @displayResults(results)

  lowercaseTerms: (terms) ->
    _.map terms, (term) ->
      term.toLowerCase()

  filterOutShortTerms: (terms) ->
    _.filter terms, (term) ->
      term.length >= 3

  displayResults: (results) ->
    links = _.map results, (result) ->
      "<a class=\"SearchResult\" href=\"#{result.path}\"><span class=\"SearchResultTitle\">#{result.title}</span><span class=\"SearchResultExcerpt\">#{result.excerpt}</span></a>"
    @results.html links.join("")

  findPaths: (terms) ->
    index = @constructor.db.index
    _.map terms, (term) ->
      index[term] || []

  buildResults: (paths, terms) ->
    documents = @constructor.db.documents
    _.map paths, (path) ->
      if doc = documents[path]
        excerpt = omise.Search.computeExcerpt(doc["content"], terms[0])
        { path: "#{path}?q=#{terms.join("+")}", title: doc["title"], excerpt: path  }
      else
        { path: "#{path}?q=#{terms.join("+")}", title: path, excerpt: path }

  @computeExcerpt: (content, term) ->
    return "" unless content

    indexOfTerm = content.toLowerCase().indexOf(term)

    if indexOfTerm >= 0
      if (indexOfTerm - 40) < 0
        return content.slice(0, (term.length + 80))
      else if (indexOfTerm + term.length + 40) > content.length
        return content.slice((content.length - term.length - 80), content.length)
      else
        return content.slice((indexOfTerm - 40), (indexOfTerm + term.length + 40))
    else
      return content.slice(0, (term.length + 80))

  loadIndexFor: (letter, callback) ->
    unless @constructor.indexes[letter]
      $.getJSON "/index-#{letter}.json", (data) =>
        @constructor.indexes[letter] = data
        callback()
    else
      callback()
    return
