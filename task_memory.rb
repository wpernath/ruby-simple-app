# frozen_string_literal: true

puts "starting memory task ..."

array = []
1_000_000.times do
 array << "a sample string"
end

puts "waiting for 5 seconds ..."
sleep(5)

puts "waiting done!"
