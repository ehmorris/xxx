$('.blackness a').on 'click', ->
  apply_random_font()
  show_random_video()

  if random_number(5,1) == 1
    rapidly_cycle_videos(25, 50)

  false

apply_random_font = ->
  random_font_index = random_number 4,1
  $('.blackness a').removeClass 'alt1 alt2 alt3 alt4'
  $('.blackness a').addClass "alt#{random_font_index}"

show_random_video = ->
  random_video_index = random_number 5,1
  $('video.active').removeClass 'active'
  $("video:nth-of-type(#{random_video_index})").addClass 'active'

rapidly_cycle_videos = (cycle_count, speed) ->
  for x in [1...cycle_count] by 1
    setTimeout show_random_video, x*speed

random_number = (min, max)->
  Math.round(Math.random() * (max - min) + min)
