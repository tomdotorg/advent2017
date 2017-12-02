a = "91212129"
ar = a.split("")
sum = 0

prev = ar.last
ar.each {|n|
  sum += n.to_i if n == prev
  prev = n
}
puts sum
