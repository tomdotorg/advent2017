SIDE = 3 # how big is the matrix on one side
  
# up: - width unless <= width
def up(side, num)
  return num <= side ? num : num - side
end

# down: + width unless > width ** 2 - width
def down(side, num)
  return num > (side ** 2)-side ? num : num + side
end

# left -1 unless % width == 1
def left(side, num)
  return num % side == 1 ? num : num - 1
end

# right: +1 unless % width == 0
def right(side, num)
  return num % side == 0 ? num : num + 1
end

def move(num, dir)
  case dir
  when 'U'
    return up(SIDE, num)
  when 'D'
    return down(SIDE, num)
  when 'L'
    return left(SIDE, num)
  when 'R'
    return right(SIDE, num)
  end
end

def unlock(loc, code)
  code.split("").each {|c|
    loc = move(loc, c)
  }
  return loc
end

loc = 5 # starting location
print (loc = unlock(loc, "ULL"))
print (loc = unlock(loc, "RRDDD"))
print (loc = unlock(loc, "LURDL"))
puts (loc = unlock(loc, "UUUUD"))
