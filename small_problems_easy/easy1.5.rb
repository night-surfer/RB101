#This is a work in progress for the second bonus part...
def print_in_box(string)
  if string.size <= 76 
    horizontal_top_and_bottom = "+#{'-' * (string.size + 2)}+"
    empty_line = "|#{' ' * (string.size + 2)}|"
    
    puts horizontal_top_and_bottom
    puts empty_line
    puts "| #{string} |"
    puts empty_line
    puts horizontal_top_and_bottom
  else
    horizontal_top_and_bottom = "+#{'-' * (string.size + 2)}+"
    empty_line = "|#{' ' * (string.size + 2)}|"
    
    puts horizontal_top_and_bottom
    puts empty_line
    puts "| #{string} |"
    puts empty_line
    puts horizontal_top_and_bottom
  end
end


print_in_box('To boldly go where no one has gone before.')

#def split_the_string(string)
#  string.split
#  split_point = string.rindex(' ', string.length / 2) || 0
#  line_1 = "| #{string[0, split_point]} |"
#  line_2 = "| #{string[(split_point + 1)..-1]} |"
#  length_difference = line_1.length - line_2.length
#  if length_difference > 0
#    line_2 += ' ' * length_difference
#  elsif length_difference < 0
#    line_1 += ' ' * (-length_difference)
#  end
#  puts line_1.center(string.size / 2)
#  puts line_2.center(string.size / 2)
##end
#  
#end  
#  
#split_the_string('To boldly go where no one has gone before.')
#split_the_string('To boldly go where noo one has gone before.')
#split_the_string('To boldly go where nooo one has gone before.')
#split_the_string('To boldly go where noooo one has gone before.')#