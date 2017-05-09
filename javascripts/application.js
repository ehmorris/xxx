var rapidly_cycle_videos = function(cycle_count, speed_in_milliseconds) {
  var i, ref, results, x;
  results = [];
  for (x = i = 1, ref = cycle_count; i < ref; x = i += 1) {
    results.push(setTimeout(show_random_video, x * speed_in_milliseconds));
  }
};

var random_number_between = function(min, max) {
  return Math.round(Math.random() * (max - min) + min);
};

var show_random_video = function() {
  var random_video_index = random_number_between(0, 4);
  document.getElementsByClassName('active_video')[0].classList.remove('active_video');
  document.getElementsByClassName('video')[random_video_index].classList.add('active_video');
};

document.addEventListener('click', function() {
  show_random_video();
  if (random_number_between(1, 4) === 1) {
    rapidly_cycle_videos(35, 50);
  }
});
