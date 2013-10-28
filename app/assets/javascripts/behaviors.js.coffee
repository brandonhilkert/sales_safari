$(document).on "click", "[data-behavior~=new-tracker]", ->
  $form = $(this).next("form")
  $form.addClass("animated").addClass("bounceIn").show()
