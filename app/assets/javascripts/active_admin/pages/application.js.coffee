# Initializers
$ ->
  # jQuery datepickers (also evaluates dynamically added HTML)
  $(document).on 'focus', '.datepicker:not(.hasDatepicker)', ->
    $(@).datepicker dateFormat: 'yy-mm-dd'

  # Clear Filters button
  $('.clear_filters_btn').click ->
    window.location.search = ''

  # Filter form: don't send any inputs that are empty
  $('#q_search').submit ->
    $(@).find(':input[value=""]').attr 'disabled', 'disabled'
