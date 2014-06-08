# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

clearField = ->
  dobValue = document.getElementById("#minor_dob")
  if dobValue.value is "mm-dd-yyyy"

    alert dobValue.value
  return