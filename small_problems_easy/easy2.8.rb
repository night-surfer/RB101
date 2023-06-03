#def compute_sum(number)
#  total = 0
#  1.upto(number) { |value| total += value }
#  total
#end 
# You can also write the method this way:
def compute_sum(number)
  (1..number).reduce(:+)
end 

#def compute_product(number)
#  total = 1
#  1.upto(number) { |value| total *= value }
#  total
#end
# You can also write the method this way:
def compute_product(number)
  (1..number).inject(1) { |product, num| product * num }
end

loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  ans = gets.chomp.downcase
    if ans == 's'
      sum = compute_sum(number)
      puts "The sum of the integers between 1 and #{number} is #{sum}."
    elsif ans == 'p'
      product = compute_product(number)
      puts "The product of the integers between 1 and #{number} is #{product}."
    else
      puts "Sorry, something went wrong."
    end
  puts " "
  puts "Do you want to try again? (y/n)"
  ans2 = gets.chomp.downcase
  break if ans2 == 'n' || ans2 == 'no'
end

puts "Thanks for your contribution!"


# use these to test the methods before building everything else!
#p compute_product(1)
#p compute_product(2)
#p compute_product(3)
#p compute_product(4)