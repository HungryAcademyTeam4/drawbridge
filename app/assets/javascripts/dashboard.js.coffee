# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$("#alerts a").click (e) ->
  e.preventDefault()
  $(this).pill "show"
$("#search a").click (e) ->
  e.preventDefault()
  $(this).pill "show"
$("#metrics a").click (e) ->
  e.preventDefault()
  $(this).pill "show"

$(document).ready ->
  $("#searchResults").hide()
  $("#searchButton").click ->
    $("#searchResults").show()