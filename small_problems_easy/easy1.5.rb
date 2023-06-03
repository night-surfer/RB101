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