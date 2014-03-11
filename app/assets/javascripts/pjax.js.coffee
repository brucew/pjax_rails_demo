jQuery ->
  if $.support.pjax
    $(document).on "click", "a.pjax", (event) ->
      container = $(this).closest(".pjax-container")
      $.pjax.click event,
        container: container
