#= require_tree ./vendor
#= require omise
#= require_tree ./components

omise.register ->

  omise.dispatch("accordion")
  omise.dispatch("lang")
  omise.dispatch("dropdown")
  omise.dispatch("search")
  omise.dispatch("apiSelector")

omise.ready ->

  omise.start()
  omise.Lang.selectUserLang()
