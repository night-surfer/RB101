#figure out how to make different patterns!
def triangle(num)
  spaces = num - 1
  stars = 1
  
  num.times do |index|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

def left_triangle(num)
  spaces = num - 1
  stars = 1
  
  num.times do |index|
    puts  ('*' * stars) + (' ' * spaces)
    spaces -= 1
    stars += 1
  end
end

def top_left_triangle(num)
  
  stars = 1
  spaces = num 
  
  num.times do |index|
    puts ('*' * spaces) #+ ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

def top_right_triangle(num)
  spaces = 0
  stars = num
  
  num.times do |index|
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 1
  end
end

left_triangle(6)
top_left_triangle(6)
left_triangle(6)
top_right_triangle(6)
triangle(6)
top_left_triangle(6)
left_triangle(6)
top_left_triangle(6)
left_triangle(6)
top_right_triangle(6)
triangle(6)
top_left_triangle(6)