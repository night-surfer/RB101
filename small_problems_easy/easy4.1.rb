# Short Long Short
def short_long_short(string1, string2)
  if string1.size < string2.size
    string1 + string2 + string1
  else
    string2 + string1 + string2
  end
end

# ternary operater option: this is less code, but the other way is easier to understand!
def short_long_short(string1, string2)
  string1.length > string2.length ? string2 + string1 + string2 : string1 + string2 + string1
end

p short_long_short('abc', 'defgh') #== "abcdefghabc"
p short_long_short('abcde', 'fgh') #== "fghabcdefgh"
p short_long_short('', 'xyz') #== "xyz"