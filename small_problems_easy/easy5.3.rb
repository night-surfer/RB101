# After Midnight (Part 2)
require 'pry'
# Place the binding.pry statement at any point in your code where you want the program to pause and enter the Pry shell. This statement acts as a breakpoint.
MINUTES_IN_A_DAY = 1440
MINUTES_IN_A_HOUR = 60

#quotient = 5
#remainder = 2
#original_number = quotient * divisor + remainder
#puts original_number

def after_midnight(time_as_a_string)
 #hour, minutes = time.split(":").map { |gives_time_in_array_form| gives_time_in_array_form.to_i } #code on line below simplifies the map method:
  (hour, minutes) = time_as_a_string.split(":").map(&:to_i)   #(&:to_i) is shorthand for {|x| x.to_i }
  (hour * MINUTES_IN_A_HOUR + minutes) % MINUTES_IN_A_DAY
 #quotient *  divisor      + remainder  (this % will correct 1440 to 0 if needed)
  
end

#def after_midnight(time) # just for reference. look at how this person did it. Disect this, then go with the hour, minutes =... option
#  return 0 if time == "24:00"
#  hours = time.split(":").first.to_i * 60
#  minutes = time.split(":").last.to_i
#  hours + minutes
#end

def before_midnight(string_time)
  og_time = MINUTES_IN_A_DAY - after_midnight(string_time)
  og_time = 0 if og_time == 1440
  og_time

end

p after_midnight('00:00') #== 0
p before_midnight('00:00') #== 0
p after_midnight('12:34') #== 754
p before_midnight('12:34') #== 686
p after_midnight('24:00') #== 0
p before_midnight('24:00') #== 0
p before_midnight('23:56') # == 4