ready = ->
  Typed.new '.element',
    strings: [
      "Software developent doesn't just teach you how to build or
        develop an application it teaches you how to think, break down a problem
        and find a solution effciently."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
