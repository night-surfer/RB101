# After Midnight (Part 1)
# use these things:
#Integer#divmod
#%
#Kernel#format
#1440 minutes in a day

MINUTES_IN_A_DAY = 1440
MINUTES_IN_A_HOUR = 60

def time_of_day(time)
  time = (time + MINUTES_IN_A_DAY) % MINUTES_IN_A_DAY
    hour, minutes = time.divmod(MINUTES_IN_A_HOUR)  #another way to think of this is (see line below):
#(divisio),(remainder) = (number ex:35).divmod(60)
  "#{format("%02d",hour)}:#{format("%.2d",minutes)}" #the formatting here works either way:"%.2d" or "%02d". Just be sure to include the quotes or it wont work!
  #format('%02d:%02d', hour, minutes)                # you can also format it this way
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(6000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"