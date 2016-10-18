# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  new_string = String.new
  string.chars.each_with_index do |x,i|
    while i < string.length-1
      new_string += string[i+1] if x=='r' || x=='R' 
      break
    end
  end
 new_string
end


