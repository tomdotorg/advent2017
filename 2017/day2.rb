require 'pp'

checksum = 0
File.open('./day2_input.txt').each do |line|
  a = line.split(" ").collect { |x| x.to_i }
  pp a
  checksum += a.max - a.min
end

print checksum
