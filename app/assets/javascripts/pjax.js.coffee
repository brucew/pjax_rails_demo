jQuery ->
  if $.support.pjax
    $(document).on "click", "a.pjax", (event) ->
      if container_selector = $(this).data('pjax-container')
        container = $(container_selector)
      else
        container = $(this).closest(".pjax-container")
      $.pjax.click event,
        container: container
      return
    $(document).on "submit", "form.pjax", (event) ->
      if container_selector = $(this).data('pjax-container')
        container = $(container_selector)
      else
        container = $(this).closest(".pjax-container")
      $.pjax.submit event,
        container: container
      return