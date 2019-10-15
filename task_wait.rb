# frozen_string_literal: true

# verify arguments
if ARGV.length < 1
  puts "usage: task_wait.rb WAITTIME_IN_SECONDS"
  abort
end
waittime_in_seconds = ARGV[0]

puts "starting WAIT task ..."

puts "waiting for [#{waittime_in_seconds}] seconds ..."
sleep(waittime_in_seconds.to_i)

puts "waiting done!"
