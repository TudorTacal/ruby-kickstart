# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(numbers)
  test =[]
  numbers.each_index do |i|
    if numbers[i]==numbers[i+1] && numbers[i]==numbers[i+2] 
      test << i
      return true
    end
  end
  return false if test.empty? 
end

