$('.blackness a').on 'click', ->
  random_font = Math.round(Math.random() * (4 - 1) + 1)
  random_video = Math.round(Math.random() * (5 - 1) + 1)

  $(this).removeClass 'alt1 alt2 alt3 alt4'
  $(this).addClass "alt#{random_font}"

  $('video.active').removeClass 'active'
  $("video:nth-of-type(#{random_video})").addClass 'active'

  false
