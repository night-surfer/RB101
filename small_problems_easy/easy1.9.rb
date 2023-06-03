def center_of(string)
  center_index = string.size / 2
  if string.size.odd?
    puts string[center_index]
  else
    puts string[center_index -1, 2]
  end
end


center_of('I love ruby') #== 'e'
center_of('Launch School')# == ' '
center_of('Launch') #== 'un'
center_of('Launchschool') #== 'hs'
center_of('x') #== 'x'