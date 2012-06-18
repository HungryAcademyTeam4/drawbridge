# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#messages").scrollTop $("#messages")[0].scrollHeight
  $("#content").focus()
  faye = new Faye.Client("http://conquerapp.com:9000/faye")
  faye.subscribe "/" + gon.chat_room.id, (data) ->
    console.log data
    $("#messages").append "<div class='row'>" + "<div class='span1'>" + "<p>" + data.user_name + "</p>" + "</div>" + "<div class='span4'>" + "<p>" + data.content + "</p>" + "</div>" + "</div>" + "<hr />"
    $("#messages").scrollTop $("#messages")[0].scrollHeight

  $("#new_message_form").live "ajax:complete", (event, xhr, status) ->
    # console.log $("#new_message_form").reload()
    $("#new_message_form")[0].reset()