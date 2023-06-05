# Multiples of 3 and 5
def get_array(num)
  arr = []
  (1..num).each do |x|
    arr << x if x % 3  == 0 || x % 5 == 0
  end
  arr
end

#def multisum(num)
#  total = 0
#  arr = get_array(num)
#  arr.each { |x| total += x }   # or use .inject:  arr.inject { |total, x| total + x}
#  total                         # like the example below
#end

def multisum(num)
  arr = get_array(num)
  arr.inject { |total, x| total + x}  # and this line can be simplified to:(see next line)
  #arr.inject(:+)
end

p multisum(9)
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# Finally, the way Launch School does it is overcomplicating it. 
# this is probably the easiest way to do it:

#def multisum(max_value)
#  sum = 0
#  1.upto(max_value) do |number|
#    if number % 3 ==0 || number % 5 == 0
#      sum += number
#    end
#  end
#  sum
#end