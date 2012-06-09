#= require jquery
#= require jquery_ujs

$.fn.extend
  autocomplete_multi: (options) ->
    split = (val) ->
      val.split(/,\s*/)

    extractLast = (term) ->
      split(term).pop()

    return @each ()->
      $this = $(this)
      $this.keydown (event) ->
        if event.keyCode == $.ui.keyCode.TAB && $this.data("autocomplete".menu.active)
          event.preventDefault
      $this.autocomplete
        minLength: 0
        source: (request, response) ->
          $.ajax
            url: options.url
            dataType: "json"
            data: { q: { name_contains: extractLast(request.term) } }
            success: (data) ->
              result = (item.name for item in data)
              console.log result
              response(result)
        focus: ->
          false
        select: (event, ui) ->
          terms = split(this.value)
          terms.pop()
          terms.push ui.item.value
          terms.push ""
          this.value = terms.join ", "
          false
