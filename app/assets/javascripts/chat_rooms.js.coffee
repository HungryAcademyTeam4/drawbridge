# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#content").focus()
  faye = new Faye.Client("http://conquerapp.com:9000/faye")
  faye.subscribe "/" + gon.chat_room.id, (data) ->
    console.log data
    $("#messages").append "<div class='row new_message_box'>" + "<div class='span1'>" + "<p>" + data.user_name + "</div>" + "<div class='span4'>" + "<p>" + data.content + "</p>" + "</div>" + "</p>" 
    $("#messages").scroll()

  $("#new_message_form").live "ajax:complete", (event, xhr, status) ->
    # console.log $("#new_message_form").reload()
    $("#new_message_form")[0].reset()