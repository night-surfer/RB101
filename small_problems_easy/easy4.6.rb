# Running Totals
def running_total(arr)
  sum = 0
  arr.map {|value| sum += value }
  #arr.inject([]) {|sum, x| sum + x }   #figure out how to add this in so you can output BOTH 
                                         # the array and the total 
end

# this is how you can do it with just inject:
#def running_total(arr)
#  total = 0
#  arr.inject([]) { |total_arr, num| total_arr << total += num }
#end

p running_total([2, 5, 13]) #== [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) #== [14, 25, 32, 47, 67]
p running_total([3]) #== [3]
p running_total([]) #== []