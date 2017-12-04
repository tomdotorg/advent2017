require 'pp'

lines = []
checksum = 0

File.open('./day2_input.txt').each do |line|
  a = line.split(" ").collect { |x| x.to_i }
  lines << a
end

def get_checksum(line)
  line.each {|num|
    line.each {|i|
      puts "comparing " + num.to_s + " and " + i.to_s
      if num > i
        return num / i if num % i == 0
      end
    }
  }
end

lines.each {|line|
  checksum += get_checksum(line)
}

puts checksum
