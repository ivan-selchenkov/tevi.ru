#= require active_admin/base
#= require jquery.autocomplete_multi

$ ->
  $(".autocomplete_multi").autocomplete_multi
      url: "/admin/galleries.json"
