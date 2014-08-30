$('.video-trigger').on 'click', ->
  show_random_video()
  rapidly_cycle_videos(35, 50) if random_number_between(1, 4) is 1
  false

show_random_video = ->
  random_video_index = random_number_between(1, 5)
  $('video.active').removeClass('active')
  $("video:nth-of-type(#{random_video_index})").addClass('active')

rapidly_cycle_videos = (cycle_count, speed_in_milliseconds) ->
  for x in [1...cycle_count] by 1
    setTimeout(show_random_video, x*speed_in_milliseconds)

random_number_between = (min, max) ->
  Math.round(Math.random() * (max - min) + min)
