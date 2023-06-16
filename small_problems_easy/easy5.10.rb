# Spin Me Around In Circles

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

p spin_me("hello world") # "olleh dlrow"
str = 'hello world'
puts str.object_id # 60
puts spin_me(str).object_id # 80  # this shows that the ojects are different. 

# but if you do it this way thay are the same object!
def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id # 47264354160220
puts spin_me(arr).object_id # 47264354160220