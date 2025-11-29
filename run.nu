#!/usr/bin/env nu

def --wrapped main [day:int, --input (-i): path, ...extra] {
  let token = try { open token | str trim } catch { "" }
  mut day_str = $day | into string
  if ($day_str | str length) == 1 {
    $day_str = $"0($day_str)"
  }
  $day_str = $"day_($day_str)"
  let input_path = $day_str | path join ($input | default input)
  mut input = try { open $input_path } catch { "" }
  if $input == "" {
    if $input_path == $"($day_str)/input" and $token != "" {
      $input = http get $"https://adventofcode.com/2025/day/($day)/input" -H {COOKIE: $"session=($token)"}
      $input | save -f $input_path
    } else {
      print $"missing input ($input_path)"
      exit 1
    }
  }
  $input | vine run $"($day_str)/($day_str).vi" --lib util/util.vi ...$extra
}

