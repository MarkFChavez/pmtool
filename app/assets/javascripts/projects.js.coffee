# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$("#create-project-form").bind 'ajax:beforeSend', ->
		$("#result").html("Sending form...")

	$("#create-project-form").bind 'ajax:complete', ->
		$("#project_name").val('')
		$("#project_desc").val('')
